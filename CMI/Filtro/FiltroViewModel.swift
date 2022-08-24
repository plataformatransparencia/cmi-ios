import Foundation

class FiltroViewModel : ObservableObject {
    
    @Published var filtros : [String] = []
    @Published var seleccionado = ""
    
    func loadFiltro(token: String) {
        guard let url = URL(string: "https://dgesui.ses.sep.gob.mx/desarrollocmi/webservice/filtro/periodos") else{
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {return}
            let result = try? JSONDecoder().decode(FiltroModel.self, from: data)
            let responseHTTP = response as? HTTPURLResponse
            DispatchQueue.main.async {
                switch responseHTTP?.statusCode {
                case 200:
                    if let result = result{
                        self.filtros = result.lista.sorted(by: >)
                        self.seleccionado = result.lista.sorted(by: >).first ?? "Selecciona"
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


