import Foundation
import Combine
import SwiftUI


class FichaViewModel : ObservableObject {
    
    var didChange = PassthroughSubject<FichaViewModel, Never>()
    @Published var isTrue : Bool = true {
        didSet{
            didChange.send(self)
        }
    }
    @Published var id = ""
    @Published var nombreIndicador = ""
    @Published var codigoIndicador = ""
    @Published var objetivoPrioritario = ""
    @Published var definicionDescripcion = ""
    @Published var fuente = ""
    @Published var nivelesDesagregacion = ""
    @Published var unidadMedida = ""
    @Published var contribucionInstitucionesDGESUI = ""
    @Published var tendenciaEsperada = ""
    @Published var periodoRecoleccionDatos = ""
    @Published var metodoCalculo = ""
    @Published var observaciones = ""
    @Published var componenteSistemico = ""
    @Published var dimensionCalidadEducativa = ""
    @Published var variables = [Variables]()
    @Published var valorLB = ""
    @Published var anioLB = ""
    @Published var notasLB = ""
    @Published var valorMetas = ""
    @Published var notasMetas = ""
    
    
    
    @Published var idModIII = ""
    @Published var nombreCategoriaModIII = ""
    @Published var codigoModIII = ""
    @Published var definicionDescripcionModIII = ""
    @Published var fuenteModIII = ""
    @Published var periodoModIII = ""
    @Published var valorUnidadMedidaModIII = ""
    @Published var observacionesModIII = ""
    @Published var valorNivelesDesagregacionModIII = ""
    @Published var valorUidadesResponsableModIII = ""
    @Published var componenteSistemicoModIII = ""
    @Published var dimensionCalidadEducativaModIII = ""
    
    
    func loadInfoFicha(token: String, path: String) {
        guard let url = URL(string: "\(base_url_qa)/webservice/\(path)/ficha") else{
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {return}
            let result = try? JSONDecoder().decode(FichaModuloIModel.self, from: data)
            let responseHTTP = response as? HTTPURLResponse
            DispatchQueue.main.async {
                switch responseHTTP?.statusCode {
                case 200:
                    if let result = result{
                        self.id = result.id
                        self.nombreIndicador = result.nombreIndicador
                        self.codigoIndicador = result.codigoIndicador
                        self.objetivoPrioritario = result.objetivoPrioritario
                        self.definicionDescripcion = result.definicionDescripcion
                        self.fuente = result.fuente
                        for i in result.nivelesDesagregacion {
                            self.nivelesDesagregacion += "\(i.valor),"
                        }
                        self.unidadMedida = result.unidadMedida.valor
                        self.contribucionInstitucionesDGESUI = result.contribucionInstitucionesDGESUI.valor
                        self.tendenciaEsperada = result.tendenciaEsperada
                        self.periodoRecoleccionDatos = result.periodoRecoleccionDatos
                        self.metodoCalculo = result.metodoCalculo
                        self.observaciones = result.observaciones
                        self.componenteSistemico = result.componenteSistemico.description
                        for i in result.dimensionCalidadEducativa {
                            self.dimensionCalidadEducativa += "\(i),"
                        }
                        self.variables = result.variables
                        self.valorLB = result.lineaBase.valor
                        self.anioLB = result.lineaBase.anio
                        self.notasLB = result.lineaBase.notas
                        self.valorMetas = result.meta.valor
                        self.notasMetas = result.meta.notas
                        self.isTrue = false
                        
                    }
                case 401:
                    fatalError("No autorizado \(responseHTTP.debugDescription)")
                default:
                    fatalError("BAD REQUEST \(error.debugDescription)")
                }
            }
        }.resume()

    }
    
    func loadInfoFichaPDF(token: String, path: String) {
        guard let url = URL(string: "\(base_url_qa)/webservice/\(path)/ficha.pdf") else{
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        
        URLSession.shared.downloadTask(with: request) {(tempLocalUrl, response, error) in
            let responseHTTP = response as? HTTPURLResponse
            DispatchQueue.main.async {
                switch responseHTTP?.statusCode {
                case 200:
                    print("La peticion es 200 ok")
                case 401:
                    fatalError("No autorizado \(responseHTTP.debugDescription)")
                default:
                    fatalError("BAD REQUEST \(error.debugDescription)")
                }
            }
        }.resume()

    }
    
    func loadInfoFichaModIII(token: String, path: String) {
        guard let url = URL(string: "\(base_url_qa)/webservice/\(path)/ficha") else{
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {return}
            let result = try? JSONDecoder().decode(FichaModuloIIIModel.self, from: data)
            let responseHTTP = response as? HTTPURLResponse
            DispatchQueue.main.async {
                switch responseHTTP?.statusCode {
                case 200:
                    if let result = result{
                        self.idModIII = result.id
                        self.nombreCategoriaModIII = result.nombreCategoria
                        self.codigoModIII = result.codigo
                        self.definicionDescripcionModIII = result.definicionDescripcion
                        self.fuenteModIII = result.fuente
                        self.periodoModIII = result.periodoRecoleccion
                        self.valorUnidadMedidaModIII = result.unidadMedida.valor
                        self.observacionesModIII = result.observaciones
                        for i in result.nivelesDesagregacion{
                            self.valorNivelesDesagregacionModIII = "\(i.valor),"
                        }
                        for i in result.uidadesResponsable{
                            self.valorUidadesResponsableModIII = "\(i.valor),"
                        }
                        for i in result.componenteSistemico{
                            self.componenteSistemicoModIII = "\(i),"
                        }
                        for i in result.dimensionCalidadEducativa{
                            self.dimensionCalidadEducativaModIII = "\(i),"
                        }
                        self.isTrue = false
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
