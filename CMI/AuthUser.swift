import Foundation
import Combine

class AuthUser: ObservableObject {
    
    
    var didChange = PassthroughSubject<AuthUser, Never>()
    
    @Published var token : String = ""
    @Published var refreshToken : String = ""
    @Published var isLoginError : Bool = false
    @Published var isLoggedin : Bool = false {
        didSet{
            didChange.send(self)
        }
    }
    
    func login(username: String, password:String) {
        guard let url = URL(string: "https://dgesui.ses.sep.gob.mx/desarrollocmi/auth/realms/CMI/protocol/openid-connect/token") else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpBody = "username=\(username)&password=\(password)&client_id=app_cmi&client_secret=Password.1&grant_type=password".data(using: .utf8, allowLossyConversion: false)!
        
        URLSession.shared.dataTask(with: request){(data, response, error) in
            guard let data = data, error == nil else {return}
            let result = try? JSONDecoder().decode(LoginModel.self, from: data)
            let responseHTTP = response as? HTTPURLResponse
            DispatchQueue.main.async {
                switch responseHTTP?.statusCode{
                case 200:
                    if let result = result {
                        self.isLoggedin = true
                        self.token = result.accessToken
                        self.refreshToken = result.refreshToken
                        self.isLoginError = false
                    }
                case 401:
                    self.isLoginError = true
                default:
                    fatalError("BAD REQUEST \(String(describing: responseHTTP?.debugDescription))")
                }
            }
        }.resume()
    }
    
    
    func logout(token:String, refresToken: String) {
        guard let url = URL(string: "https://dgesui.ses.sep.gob.mx/desarrollocmi/auth/realms/CMI/protocol/openid-connect/logout") else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        request.httpBody = "refresh_token=\(refresToken)&client_id=app_cmi".data(using: .utf8, allowLossyConversion: false)!
        
        URLSession.shared.dataTask(with: request){(data, response, error) in
            guard error == nil else {
                fatalError("Error: error calling POST \(error!)")
            }
            
            if let response = response as? HTTPURLResponse, (200 ..< 299) ~= response.statusCode{
                DispatchQueue.main.async {
                    self.isLoggedin = false
                }
            }
            
            guard let response = response as? HTTPURLResponse, (200 ..< 299) ~= response.statusCode else {
                fatalError("Error: HTTP request failed \(response.debugDescription)")
            }
            
        }.resume()
    }
}


