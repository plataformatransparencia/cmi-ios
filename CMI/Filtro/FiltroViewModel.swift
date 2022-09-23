import Foundation

class FiltroViewModel : ObservableObject {
    
    @Published var filtros : [String] = []
    @Published var seleccionado = ""
    
    
    @Published var anios : [String] = []
    @Published var anioSeleccionado = "2022"
    
    @Published var subsistemas : [String] = []
    @Published var subsistemaSeleccionado = ""
    
    @Published var entidadesFederativas : [String] = []
    @Published var entidadFederativaSeleccionado = ""
    
    @Published var universidades : [String] = []
    @Published var universidadSeleccionado = ""
    
    @Published var periodos : [String] = []
    @Published var periodoSeleccionado = "2021 - 2022"
    
    @Published var showGraph : Bool = true
    @Published var showList : Bool = false
    
    @Published var cambio : Bool = false
    func loadFiltro(token: String) {
        guard let url = URL(string: "\(base_url_prod)/webservice/filtro/periodos") else{
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
        guard let url = URL(string: "\(base_url_prod)/webservice/\(path)/filtro") else{
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
                        self.anios = result.anios ?? [""]
                        self.anioSeleccionado = result.anios?.first ?? ""
                        self.subsistemas = result.subsistemas
                        self.subsistemaSeleccionado = result.subsistemas.first ?? ""
                        self.entidadesFederativas = result.entidadesFederativas
                        self.entidadFederativaSeleccionado = result.entidadesFederativas.first ?? ""
                        self.universidades = result.universidades
                        self.universidadSeleccionado = result.universidades.first ?? ""
                    }
                case 401:
                    fatalError("No autorizado \(responseHTTP.debugDescription)")
                default:
                    fatalError("BAD REQUEST \(error.debugDescription)")
                }
            }
        }.resume()
    }
    
    
    func loadFiltroModII(token: String, path: String) {
        guard let url = URL(string: "\(base_url_prod)/webservice/\(path)/filtro") else{
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
                        self.anios = result.anios ?? self.anios
                        if path == "tasa-bruta-escolarizada" || path == "tasa-bruta-escolarizada-cobertura" || path == "tasa-bruta-escolarizacion-ies"{
                            self.periodoSeleccionado = result.anios?.first ?? self.periodoSeleccionado
                        }
                        self.anioSeleccionado = result.anios?.first ?? "2022"
                        self.subsistemas = result.subsistemas
                        self.subsistemaSeleccionado = result.subsistemas.first ?? ""
                        self.entidadesFederativas = result.entidadesFederativas
                        self.entidadFederativaSeleccionado = result.entidadesFederativas.first ?? ""
                        self.universidades = result.universidades
                        self.universidadSeleccionado = result.universidades.first ?? ""
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


