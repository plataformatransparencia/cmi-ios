import Foundation


class ModuloViewModel : ObservableObject {
    
    //tasa-bruta-escolarizacion-cobertura
    @Published var imagenTotalTBEC = ""
    @Published var imagenMujeresTBEC = ""
    @Published var imagenHombresTBEC = ""
    
    //tasa-bruta-escolarizacion-cobertura-entidad-federativa
    @Published var imagenTotalTBECEF = ""
    @Published var imagenMujeresTBECEF = ""
    @Published var imagenHombresTBECEF = ""
    
    
    //tasa-bruta-escolarizacion-cobertura-institucion
    @Published var imagenTotalTBECI = ""
    @Published var imagenMujeresTBECI = ""
    @Published var imagenHombresTBECI = ""
    @Published var imagenDiscapacitadosTBECI = ""
    @Published var imagenHablantesLenguaIndigenaTBECI = ""
    @Published var imagenEscolarizadoTBECI = ""
    @Published var imagenNoEscolarizadoTBECI = ""
    @Published var imagenMixtoTBECI = ""
    
    //tasa-bruta-escolarizacion-poblacion-primeros-cuatro-deciles
    @Published var imagenTotalTBEPPD = ""
    @Published var imagenMujeresTBEPPD = ""
    @Published var imagenHombresTBEPPD = ""
    @Published var imagenDiscapacitadosTBEPPD = ""
    @Published var imagenHablantesLenguaIndigenaTBEPPD = ""
    
    //porcentaje-eficiencia-terminal-sistema-educativo-nacional
    @Published var imagenTotalPETSEN = ""
    @Published var imagenMujeresPETSEN = ""
    @Published var imagenHombresPETSEN = ""
    @Published var imagenDiscapacitadosPETSEN = ""
    
    
    //porcentaje-abandono-escolar
    @Published var imagenTotalPAE = ""
    @Published var imagenMujeresPAE = ""
    @Published var imagenHombresPAE = ""
    @Published var imagenDiscapacitadosPAE = ""
    @Published var imagenHablantesLenguaIndigenaPAE = ""
    
    //gasto-federal-educacion-porcentaje-pib-ies
    @Published var imagenTotalGFEPPibIes = ""
    
    //gasto-federal-educacion-porcentaje-pib-entidad
    @Published var imagenTotalGFEPPibEEntidad = ""
        
    func loadInfo(token: String, path: String ,periodo: String) {
        guard let url = URL(string: "https://dgesui.ses.sep.gob.mx/desarrollocmi/webservice/\(path)/\(periodo)") else{
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {return}
            let responseHTTP = response as? HTTPURLResponse
            switch path{
            case "tasa-bruta-escolarizacion-cobertura":
                let resultTBEC = try? JSONDecoder().decode(TasaBrutaEscolarizacionCoberturaModel.self, from: data)
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultTBEC{
                            self.imagenTotalTBEC = result.graficaTotal
                            self.imagenMujeresTBEC = result.graficaMujeres
                            self.imagenHombresTBEC = result.graficaHombres
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "tasa-bruta-escolarizacion-cobertura-entidad-federativa":
                let resultTBECEF = try? JSONDecoder().decode(TasaBrutaEscolarizacionCoberturaEntidadFederativaModel.self, from: data)
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultTBECEF{
                            self.imagenTotalTBECEF = result.graficaTotal
                            self.imagenMujeresTBECEF = result.graficaMujeres
                            self.imagenHombresTBECEF = result.graficaHombres
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "tasa-bruta-escolarizacion-cobertura-institucion":
                let resultTBECI = try? JSONDecoder().decode(TasaBrutaEscolarizacionCoberturaInstitucionModel.self, from: data)
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultTBECI{
                            self.imagenTotalTBECI = result.graficaTotal
                            self.imagenMujeresTBECI = result.graficaMujeres
                            self.imagenHombresTBECI = result.graficaHombres
                            self.imagenDiscapacitadosTBECI = result.graficaDiscapacitados
                            self.imagenHablantesLenguaIndigenaTBECI = result.graficaHablantesLenguaIndigena
                            self.imagenEscolarizadoTBECI = result.graficaEscolarizado
                            self.imagenNoEscolarizadoTBECI = result.graficaNoEscolarizado
                            self.imagenMixtoTBECI = result.graficaMixto
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "tasa-bruta-escolarizacion-poblacion-primeros-cuatro-deciles":
                let resultTBEPPD = try? JSONDecoder().decode(TasaBrutaEscolarizacionPoblacionPrimerosCuatroDecilesIngresoModel.self, from: data)
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultTBEPPD{
                            self.imagenTotalTBEPPD = result.graficaTotal
                            self.imagenMujeresTBEPPD = result.graficaMujeres
                            self.imagenHombresTBEPPD = result.graficaHombres
                            self.imagenDiscapacitadosTBEPPD = result.graficaDiscapacitados
                            self.imagenHablantesLenguaIndigenaTBEPPD = result.graficaHablantesLenguaIndigena
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-eficiencia-terminal-sistema-educativo-nacional":
                let resultPETSEN = try? JSONDecoder().decode(PorcentajeEficienciaTerminalSistemaEducativoNacionalModel.self, from: data)
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultPETSEN{
                            self.imagenTotalPETSEN = result.graficaTotal
                            self.imagenMujeresPETSEN = result.graficaMujeres
                            self.imagenHombresPETSEN = result.graficaHombres
                            self.imagenDiscapacitadosPETSEN = result.graficaDiscapacitados
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-abandono-escolar":
                let resultPAE = try? JSONDecoder().decode(PorcentajeAbanonoEscolarModel.self, from: data)
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultPAE{
                            self.imagenTotalPAE = result.graficaTotal
                            self.imagenMujeresPAE = result.graficaMujeres
                            self.imagenHombresPAE = result.graficaHombres
                            self.imagenDiscapacitadosPAE = result.graficaDiscapacitados
                            self.imagenHablantesLenguaIndigenaPAE = result.graficaHablantesLenguaIndigena
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "gasto-federal-educacion-porcentaje-pib-ies":
                let resultPAE = try? JSONDecoder().decode(GastoFederalEducacionPorcentajePibIesModel.self, from: data)
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultPAE{
                            self.imagenTotalGFEPPibIes = result.grafica
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "gasto-federal-educacion-porcentaje-pib-entidad":
                let resultPAE = try? JSONDecoder().decode(GastoFederalEducacionPorcentajePibEntidadModel.self, from: data)
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultPAE{
                            self.imagenTotalGFEPPibEEntidad = result.grafica
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            default:
                fatalError("No se selecciono algun indicador de la lista")
            }
        }.resume()
    }
    
}
