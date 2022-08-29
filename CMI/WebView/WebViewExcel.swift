import Foundation
import SwiftUI
import WebKit

struct WebViewExcel: UIViewRepresentable {
    let webView = WKWebView()
    let token : String
    let path : String
    let periodo: String
    
    func makeUIView(context: Context) -> some UIView {
        let url =   "https://dgesui.ses.sep.gob.mx/desarrollocmi/webservice/\(path)/\(periodo).csv?enc=iso-8859-1"
        print(url)
        let downloadUrl = URL(string: url)!
        var request = URLRequest(url: downloadUrl)
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
                        webView.load(request)
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
        
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
