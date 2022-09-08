import Foundation

class FiltroViewModel : ObservableObject {
    
    @Published var filtros : [String] = []
    @Published var seleccionado = ""
    
    
    @Published var anios : [String] = []
    @Published var anioSeleccionado = "2022"
    
    @Published var subsistemas : [String] = []
    @Published var subsistemaSeleccionado = "Todos"
    
    @Published var entidadesFederativas : [String] = []
    @Published var entidadFederativaSeleccionado = "Todas"
    
    @Published var universidades : [String] = []
    @Published var universidadSeleccionado = "Todas"
    
    @Published var showGraph : Bool = true
    @Published var showList : Bool = false
    
    func loadFiltro(token: String) {
        guard let url = URL(string: "\(base_url_qa)/webservice/filtro/periodos") else{
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
    
    func loadFiltroModIII(token: String, path: String) {
        guard let url = URL(string: "\(base_url_qa)/webservice/\(path)/filtro") else{
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {return}
            let result = try? JSONDecoder().decode(FiltroModelModIII.self, from: data)
            let responseHTTP = response as? HTTPURLResponse
            DispatchQueue.main.async {
                switch responseHTTP?.statusCode {
                case 200:
                    if let result = result{
                        self.anios = result.anios
                        self.subsistemas = result.subsistemas
                        self.entidadesFederativas = result.entidadesFederativas
                        self.universidades = result.universidades
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


