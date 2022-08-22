import Foundation
import SwiftUI


class ExcelViewModel : ObservableObject {
    
    func downloadExcel(token: String, path: String, periodo: String) {
        guard let url = URL(string: "https://dgesui.ses.sep.gob.mx/desarrollocmi/webservice/\(path)/\(periodo).csv?enc=iso-8859-1") else{
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        let resourceDocPath = (FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)).last! as URL
        
        URLSession.shared.dataTask(with: request) {(tempLocalUrl, response, error) in
            guard let tempLocalUrl = tempLocalUrl, error == nil else {
                return
            }
            let responseHTTP = response as? HTTPURLResponse
            DispatchQueue.main.async {
                switch responseHTTP?.statusCode {
                case 200:
                    do {
                        try tempLocalUrl.write(to: resourceDocPath.appendingPathComponent("\(path).csv"), options: .atomic)
                    } catch {
                        fatalError("NO SE PUDO GUARDAR EL PDF")
                    }
                case 401:
                    fatalError("No autorizado \(responseHTTP.debugDescription)")
                default:
                    fatalError("BAD REQUEST \(error.debugDescription)")
                }
            }
        }.resume()
        
    }
    
}
