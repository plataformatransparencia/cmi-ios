import Foundation
import SwiftUI
import WebKit

struct WebViewExcel: UIViewRepresentable {
    let webView = WKWebView()
    let token : String
    let path : String
    let periodo: String
    let modulo : String
    let entidadFederativa: String
    let subsistema: String
    let universidad: String
    
    func makeUIView(context: Context) -> some UIView {
        let urlModI = "\(base_url_prod)/webservice/\(path)/\(periodo).csv?enc=iso-8859-1"
        let urlModIII = "\(base_url_prod)/webservice/\(path)/\(periodo).csv?universidad=\(universidad)&subsistema=\(subsistema)&entidadFederativa=\(entidadFederativa)&enc=iso-8859-1"
       
        let downloadUrl = URL(string: modulo == "I" ? urlModI : urlModIII.replacingOccurrences(of: "á", with: "%C3%A1").replacingOccurrences(of: "é", with: "%C3%A9").replacingOccurrences(of: "í", with: "%C3%AD").replacingOccurrences(of: "ó", with: "%C3%B3").replacingOccurrences(of: " ", with: "%20"))!
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
