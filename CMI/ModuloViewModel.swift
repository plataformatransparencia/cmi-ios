import Foundation


class ModuloViewModel : ObservableObject {
    
    //tasa-bruta-escolarizacion-cobertura
    @Published var imagenTotalTBEC = ""
    @Published var imagenMujeresTBEC = ""
    @Published var imagenHombresTBEC = ""
    
    //Totales tasa-bruta-escolarizacion-cobertura
    @Published var censoMujGlobalTBEC = 0
    @Published var censoHomGlobalTBEC = 0
    @Published var censoTotalGlobalTBEC = 0
    @Published var matriculaMujGlobalTBEC = 0
    @Published var matriculaHomGlobalTBEC = 0
    @Published var matriculaTotalGlobalTBEC = 0
    @Published var tasaMujeresGlobalTBEC = 0.0
    @Published var tasaHombresGlobalTBEC = 0.0
    @Published var tasaEscolarizacionGlobalTBEC = 0.0
    
    //tasa-bruta-escolarizacion-cobertura-entidad-federativa
    @Published var imagenTotalTBECEF = ""
    @Published var imagenMujeresTBECEF = ""
    @Published var imagenHombresTBECEF = ""
    
    // Totales tasa-bruta-escolarizacion-cobertura-entidad-federativa
    @Published var matriculaHombresTBECEF = 0
    @Published var matriculaMujeresTBECEF = 0
    @Published var matriculaTotalTBECEF = 0
    @Published var censoHombresTBECEF = 0
    @Published var censoMujeresTBECEF = 0
    @Published var censoTotalTBECEF = 0
    @Published var contribucionTBECEF = 0.0
    @Published var contribucionHombresTBECEF = 0.0
    @Published var contribucionMujeresTBECEF = 0.0
    
    //tasa-bruta-escolarizacion-cobertura-institucion
    @Published var imagenTotalTBECI = ""
    @Published var imagenMujeresTBECI = ""
    @Published var imagenHombresTBECI = ""
    @Published var imagenDiscapacitadosTBECI = ""
    @Published var imagenHablantesLenguaIndigenaTBECI = ""
    @Published var imagenEscolarizadoTBECI = ""
    @Published var imagenNoEscolarizadoTBECI = ""
    @Published var imagenMixtoTBECI = ""
    
    //Totales tasa-bruta-escolarizacion-cobertura-institucion
    @Published var censoNacionalHombresTBECI = 0
    @Published var censoNacionalMujeresTBECI = 0
    @Published var totalTSUPATBECI = 0
    @Published var totalLicenciaturaTBECI = 0
    @Published var totalHombresTBECI = 0
    @Published var totalMujeresTBECI = 0
    @Published var totalDiscapacitadosTBECI = 0
    @Published var totalHablanteLenguaIndigenaTBECI = 0
    @Published var totalEscolarizadoTBECI = 0
    @Published var totalNoEscolarizadoTBECI = 0
    @Published var totalMixtoTBECI = 0
    @Published var matriculaTotalTBECI = 0
    @Published var contrubucionDGESUITBECI = 0.0
    @Published var contribucionDGESUIHombresTBECI = 0.0
    @Published var contribucionDGESUIMujeresTBECI = 0.0
    @Published var porcentajeConDiscapacidadTBECI = 0.0
    @Published var porcentajeHablanteLenguaIndigenaTBECI = 0.0
    @Published var porcentajeEscolarizadoTBECI = 0.0
    @Published var porcentajeNoEscolarizadoTBECI = 0.0
    @Published var porcentajeMixtoTBECI = 0.0
    
    
    //tasa-bruta-escolarizacion-poblacion-primeros-cuatro-deciles
    @Published var imagenTotalTBEPPD = ""
    @Published var imagenMujeresTBEPPD = ""
    @Published var imagenHombresTBEPPD = ""
    @Published var imagenDiscapacitadosTBEPPD = ""
    @Published var imagenHablantesLenguaIndigenaTBEPPD = ""
    
    
    //Totales tasa-bruta-escolarizacion-poblacion-primeros-cuatro-deciles
    @Published var hombresTBEPPD = 0
    @Published var mujeresTBEPPD = 0
    @Published var totalTBEPPD = 0
    @Published var discapacitadosTBEPPD = 0
    @Published var hablantesLenguaIndigenaTBEPPD = 0
    @Published var hombresEnRangoDeEdadTBEPPD = 0
    @Published var mujeresEnRangoDeEdadTBEPPD = 0
    @Published var totalEnRangoDeEdadTBEPPD = 0
    @Published var discapacitadosEnRangoDeEdadTBEPPD = 0
    @Published var hablantesLenguaIndigenaEnRangoDeEdadTBEPPD = 0
    @Published var tasaEscolarizacionHombresTBEPPD = 0.0
    @Published var tasaEscolarizacionMujeresTBEPPD = 0.0
    @Published var tasaGeneralTBEPPD = 0.0
    @Published var tasaDiscapacitadosTBEPPD = 0.0
    @Published var tasaHablantesLenguaIndigenaTBEPPD = 0.0
    
    //porcentaje-eficiencia-terminal-sistema-educativo-nacional
    @Published var imagenTotalPETSEN = ""
    @Published var imagenMujeresPETSEN = ""
    @Published var imagenHombresPETSEN = ""
    @Published var imagenDiscapacitadosPETSEN = ""
    
    //Totales porcentaje-eficiencia-terminal-sistema-educativo-nacional
    @Published var egresadosCicloAnteriorHombresPETSEN = 0
    @Published var nuevoIngresoSeisCiclosAtrasHombresPETSEN = 0
    @Published var egresadosCicloAnteriorMujeresPETSEN = 0
    @Published var nuevoIngresoSeisCiclosAtrasMujeresPETSEN = 0
    @Published var egresadosCicloAnteriorDiscapacitadosPETSEN = 0
    @Published var nuevoIngresoSeisCiclosAtrasDiscapacitadosPETSEN = 0
    @Published var eficienciaTerminalHombresPETSEN = 0.0
    @Published var eficienciaTerminalMujeresPETSEN = 0.0
    @Published var eficienciaTerminalDiscapacitadosPETSEN = 0.0
    @Published var egresadosCicloAnteriorGeneralPETSEN = 0
    @Published var nuevoIngresoSeisCiclosAtrasGeneralPETSEN = 0
    @Published var eficienciaTerminalGeneralPETSEN = 0.0
    
    //porcentaje-abandono-escolar
    @Published var imagenTotalPAE = ""
    @Published var imagenMujeresPAE = ""
    @Published var imagenHombresPAE = ""
    @Published var imagenDiscapacitadosPAE = ""
    @Published var imagenHablantesLenguaIndigenaPAE = ""
    
    //Totales porcentaje-abandono-escolar
    @Published var matriculaPeriodoAnteriorHombresPAE = 0
    @Published var egresadosPeriodoAnteriorHombresPAE = 0
    @Published var matriculaHombresPAE = 0
    @Published var nuevoIngresoHombresPAE = 0
    @Published var matriculaPeriodoAnteriorMujeresPAE = 0
    @Published var egresadosPeriodoAnteriorMujeresPAE = 0
    @Published var matriculaMujeresPAE = 0
    @Published var nuevoIngresoMujeresPAE = 0
    @Published var matriculaPeriodoAnteriorDiscapacitadosPAE = 0
    @Published var egresadosPeriodoAnteriorDiscapacitadosPAE = 0
    @Published var matriculaDiscapacitadosPAE = 0
    @Published var nuevoIngresoDiscapacitadosPAE = 0
    @Published var matriculaPeriodoAnteriorHablantesLenguaIndigenaPAE = 0
    @Published var egresadosPeriodoAnteriorHablantesLenguaIndigenaPAE = 0
    @Published var matriculaHablantesLenguaIndigenaPAE = 0
    @Published var nuevoIngresoHablantesLenguaIndigenaPAE = 0
    @Published var matriculaPeriodoAnteriorGeneralPAE = 0
    @Published var egresadosPeriodoAnteriorGeneralPAE = 0
    @Published var matriculaGeneralPAE = 0
    @Published var nuevoIngresoGeneralPAE = 0
    @Published var abandonoHombresPAE = 0
    @Published var tasaAbandonoHombresPAE = 0.0
    @Published var tasaRetencionHombresPAE = 0.0
    @Published var abandonoMujeresPAE = 0
    @Published var tasaAbandonoMujeresPAE = 0.0
    @Published var tasaRetencionMujeresPAE = 0.0
    @Published var abandonoDiscapacitadosPAE = 0
    @Published var tasaAbandonoDiscapacitadosPAE = 0.0
    @Published var tasaRetencionDiscapacitadosPAE = 0.0
    @Published var abandonoHablantesLenguaIndigenaPAE = 0
    @Published var tasaAbandonoHablantesLenguaIndigenaPAE = 0.0
    @Published var tasaRetencionHablantesLenguaIndigenaPAE = 0.0
    @Published var abandonoGeneralPAE = 0
    @Published var tasaAbandonoGeneralPAE = 0.0
    @Published var tasaRetencionGeneralPAE = 0.0
    
    //gasto-federal-educacion-porcentaje-pib-ies
    @Published var imagenTotalGFEPPibIes = ""
    
    // Totales gasto-federal-educacion-porcentaje-pib-ies
    @Published var aportacionGFEPPibIes = 0.0
    @Published var subsidioGFEPPibIes = 0.0
    
    //gasto-federal-educacion-porcentaje-pib-entidad
    @Published var imagenTotalGFEPPibEEntidad = ""
    
    // Totales gasto-federal-educacion-porcentaje-pib-entidad
    @Published var aportacionEstatalTotalGFEPPibEEntidad = 0.0
    @Published var subsidioGFEPPibEEntidad = 0.0
        
    func loadInfo(token: String, path: String ,periodo: String) {
        guard let url = URL(string: "https://dgesui.ses.sep.gob.mx/desarrollocmi/webservice/\(path)/\(periodo)") else{
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {return}
            switch path{
            case "tasa-bruta-escolarizacion-cobertura":
                let resultTBEC = try? JSONDecoder().decode(TasaBrutaEscolarizacionCoberturaModel.self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultTBEC{
                            self.imagenTotalTBEC = result.graficaTotal
                            self.imagenMujeresTBEC = result.graficaMujeres
                            self.imagenHombresTBEC = result.graficaHombres
                            //Totales
                            self.censoMujGlobalTBEC = result.tabla.censoMujGlobal
                            self.censoHomGlobalTBEC = result.tabla.censoHomGlobal
                            self.censoTotalGlobalTBEC = result.tabla.censoTotalGlobal
                            self.matriculaMujGlobalTBEC = result.tabla.matriculaMujGlobal
                            self.matriculaHomGlobalTBEC = result.tabla.matriculaHomGlobal
                            self.matriculaTotalGlobalTBEC = result.tabla.matriculaTotalGlobal
                            self.tasaMujeresGlobalTBEC = result.tabla.tasaMujeresGlobal
                            self.tasaHombresGlobalTBEC = result.tabla.tasaHombresGlobal
                            self.tasaEscolarizacionGlobalTBEC = result.tabla.tasaEscolarizacionGlobal
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "tasa-bruta-escolarizacion-cobertura-entidad-federativa":
                let resultTBECEF = try? JSONDecoder().decode(TasaBrutaEscolarizacionCoberturaEntidadFederativaModel.self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultTBECEF{
                            self.imagenTotalTBECEF = result.graficaTotal
                            self.imagenMujeresTBECEF = result.graficaMujeres
                            self.imagenHombresTBECEF = result.graficaHombres
                            //Totales
                            self.contribucionTBECEF = result.tabla.contribucion
                            self.contribucionHombresTBECEF = result.tabla.contribucionHombres
                            self.contribucionMujeresTBECEF = result.tabla.contribucionMujeres
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "tasa-bruta-escolarizacion-cobertura-institucion":
                let resultTBECI = try? JSONDecoder().decode(TasaBrutaEscolarizacionCoberturaInstitucionModel.self, from: data)
                let responseHTTP = response as? HTTPURLResponse
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
                            //Total
                            self.totalTSUPATBECI = result.tabla.totalTSUPA
                            self.totalLicenciaturaTBECI = result.tabla.totalLicenciatura
                            self.matriculaTotalTBECI = result.tabla.matriculaTotal
                            self.contrubucionDGESUITBECI = result.tabla.contrubucionDGESUI
                            //Mujeres
                            self.totalMujeresTBECI = result.tabla.totalMujeres
                            self.contribucionDGESUIMujeresTBECI = result.tabla.contribucionDGESUIMujeres
                            //Hombres
                            self.totalHombresTBECI = result.tabla.totalHombres
                            self.contribucionDGESUIHombresTBECI = result.tabla.contribucionDGESUIHombres
                            //Con Discapacidad
                            self.totalDiscapacitadosTBECI = result.tabla.totalDiscapacitados
                            self.porcentajeConDiscapacidadTBECI = result.tabla.porcentajeConDiscapacidad
                            //Hablantes de lengua indigena
                            self.totalHablanteLenguaIndigenaTBECI = result.tabla.totalHablanteLenguaIndigena
                            self.porcentajeHablanteLenguaIndigenaTBECI = result.tabla.porcentajeHablanteLenguaIndigena
                            //Escolarizado
                            self.totalEscolarizadoTBECI = result.tabla.totalEscolarizado
                            self.porcentajeEscolarizadoTBECI = result.tabla.porcentajeEscolarizado
                            //No Escolarizado
                            self.totalNoEscolarizadoTBECI = result.tabla.totalNoEscolarizado
                            self.porcentajeNoEscolarizadoTBECI = result.tabla.porcentajeNoEscolarizado
                            //Mixto
                            self.totalMixtoTBECI = result.tabla.totalMixto
                            self.porcentajeMixtoTBECI = result.tabla.porcentajeMixto
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "tasa-bruta-escolarizacion-poblacion-primeros-cuatro-deciles":
                let resultTBEPPD = try? JSONDecoder().decode(TasaBrutaEscolarizacionPoblacionPrimerosCuatroDecilesIngresoModel.self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultTBEPPD{
                            self.imagenTotalTBEPPD = result.graficaTotal
                            self.imagenMujeresTBEPPD = result.graficaMujeres
                            self.imagenHombresTBEPPD = result.graficaHombres
                            self.imagenDiscapacitadosTBEPPD = result.graficaDiscapacitados
                            self.imagenHablantesLenguaIndigenaTBEPPD = result.graficaHablantesLenguaIndigena
                            // Total
                            self.totalTBEPPD = result.tabla.total
                            self.totalEnRangoDeEdadTBEPPD = result.tabla.totalEnRangoDeEdad
                            self.tasaGeneralTBEPPD = result.tabla.tasaGeneral
                            // Hombres
                            self.hombresTBEPPD = result.tabla.hombres
                            self.hombresEnRangoDeEdadTBEPPD = result.tabla.hombresEnRangoDeEdad
                            self.tasaEscolarizacionHombresTBEPPD = result.tabla.tasaEscolarizacionHombres
                            // Mujeres
                            self.mujeresTBEPPD = result.tabla.mujeres
                            self.mujeresEnRangoDeEdadTBEPPD = result.tabla.mujeresEnRangoDeEdad
                            self.tasaEscolarizacionMujeresTBEPPD = result.tabla.tasaEscolarizacionMujeres
                            // Con discapacidad
                            self.discapacitadosTBEPPD = result.tabla.discapacitados
                            self.discapacitadosEnRangoDeEdadTBEPPD = result.tabla.discapacitadosEnRangoDeEdad
                            self.tasaDiscapacitadosTBEPPD = result.tabla.tasaDiscapacitados
                            // Hablantes de leengua indigena
                            self.hablantesLenguaIndigenaTBEPPD = result.tabla.hablantesLenguaIndigena
                            self.hablantesLenguaIndigenaEnRangoDeEdadTBEPPD = result.tabla.hablantesLenguaIndigenaEnRangoDeEdad
                            self.tasaHablantesLenguaIndigenaTBEPPD = result.tabla.tasaHablantesLenguaIndigena
                            
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-eficiencia-terminal-sistema-educativo-nacional":
                let resultPETSEN = try? JSONDecoder().decode(PorcentajeEficienciaTerminalSistemaEducativoNacionalModel.self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultPETSEN{
                            self.imagenTotalPETSEN = result.graficaTotal
                            self.imagenMujeresPETSEN = result.graficaMujeres
                            self.imagenHombresPETSEN = result.graficaHombres
                            self.imagenDiscapacitadosPETSEN = result.graficaDiscapacitados
                            // Total
                            self.egresadosCicloAnteriorGeneralPETSEN = result.tabla.egresadosCicloAnteriorGeneral
                            self.nuevoIngresoSeisCiclosAtrasGeneralPETSEN = result.tabla.nuevoIngresoSeisCiclosAtrasGeneral
                            self.eficienciaTerminalGeneralPETSEN = result.tabla.eficienciaTerminalGeneral
                            // Mujeres
                            self.egresadosCicloAnteriorMujeresPETSEN = result.tabla.egresadosCicloAnteriorMujeres
                            self.nuevoIngresoSeisCiclosAtrasMujeresPETSEN = result.tabla.nuevoIngresoSeisCiclosAtrasMujeres
                            self.eficienciaTerminalMujeresPETSEN = result.tabla.eficienciaTerminalMujeres
                            // Hombres
                            self.egresadosCicloAnteriorHombresPETSEN = result.tabla.egresadosCicloAnteriorHombres
                            self.nuevoIngresoSeisCiclosAtrasHombresPETSEN = result.tabla.nuevoIngresoSeisCiclosAtrasHombres
                            self.eficienciaTerminalHombresPETSEN = result.tabla.eficienciaTerminalHombres
                            // Con discapacidad
                            self.egresadosCicloAnteriorDiscapacitadosPETSEN = result.tabla.egresadosCicloAnteriorDiscapacitados
                            self.nuevoIngresoSeisCiclosAtrasDiscapacitadosPETSEN = result.tabla.nuevoIngresoSeisCiclosAtrasDiscapacitados
                            self.eficienciaTerminalDiscapacitadosPETSEN = result.tabla.eficienciaTerminalDiscapacitados
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-abandono-escolar":
                let resultPAE = try? JSONDecoder().decode(PorcentajeAbanonoEscolarModel.self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultPAE{
                            self.imagenTotalPAE = result.graficaTotal
                            self.imagenMujeresPAE = result.graficaMujeres
                            self.imagenHombresPAE = result.graficaHombres
                            self.imagenDiscapacitadosPAE = result.graficaDiscapacitados
                            self.imagenHablantesLenguaIndigenaPAE = result.graficaHablantesLenguaIndigena
                            // Total
                            self.matriculaPeriodoAnteriorGeneralPAE = result.tabla.matriculaPeriodoAnteriorGeneral
                            self.egresadosPeriodoAnteriorGeneralPAE = result.tabla.egresadosPeriodoAnteriorGeneral
                            self.matriculaGeneralPAE = result.tabla.matriculaGeneral
                            self.nuevoIngresoGeneralPAE = result.tabla.nuevoIngresoGeneral
                            self.abandonoGeneralPAE = result.tabla.abandonoGeneral
                            self.tasaAbandonoGeneralPAE = result.tabla.tasaAbandonoGeneral
                            self.tasaRetencionGeneralPAE = result.tabla.tasaRetencionGeneral
                            // Mujeres
                            self.matriculaPeriodoAnteriorMujeresPAE = result.tabla.matriculaPeriodoAnteriorMujeres
                            self.egresadosPeriodoAnteriorMujeresPAE = result.tabla.egresadosPeriodoAnteriorMujeres
                            self.matriculaMujeresPAE = result.tabla.matriculaMujeres
                            self.nuevoIngresoMujeresPAE = result.tabla.nuevoIngresoMujeres
                            self.abandonoMujeresPAE = result.tabla.abandonoMujeres
                            self.tasaAbandonoMujeresPAE = result.tabla.tasaAbandonoMujeres
                            self.tasaRetencionMujeresPAE =  result.tabla.tasaRetencionMujeres
                            // Hombres
                            self.matriculaPeriodoAnteriorHombresPAE = result.tabla.matriculaPeriodoAnteriorHombres
                            self.egresadosPeriodoAnteriorHombresPAE = result.tabla.egresadosPeriodoAnteriorHombres
                            self.matriculaHombresPAE = result.tabla.matriculaHombres
                            self.nuevoIngresoHombresPAE = result.tabla.nuevoIngresoHombres
                            self.abandonoHombresPAE = result.tabla.abandonoHombres
                            self.tasaAbandonoHombresPAE = result.tabla.tasaAbandonoHombres
                            self.tasaRetencionHombresPAE =  result.tabla.tasaRetencionHombres
                            // Con Disapacidad
                            self.matriculaPeriodoAnteriorDiscapacitadosPAE = result.tabla.matriculaPeriodoAnteriorDiscapacitados
                            self.egresadosPeriodoAnteriorDiscapacitadosPAE = result.tabla.egresadosPeriodoAnteriorDiscapacitados
                            self.matriculaDiscapacitadosPAE = result.tabla.matriculaDiscapacitados
                            self.nuevoIngresoDiscapacitadosPAE = result.tabla.nuevoIngresoDiscapacitados
                            self.abandonoDiscapacitadosPAE = result.tabla.abandonoDiscapacitados
                            self.tasaAbandonoDiscapacitadosPAE = result.tabla.tasaAbandonoDiscapacitados
                            self.tasaRetencionDiscapacitadosPAE =  result.tabla.tasaRetencionDiscapacitados
                            // Hablantes de lengua indigena
                            self.matriculaPeriodoAnteriorHablantesLenguaIndigenaPAE = result.tabla.matriculaPeriodoAnteriorHablantesLenguaIndigena
                            self.egresadosPeriodoAnteriorHablantesLenguaIndigenaPAE = result.tabla.egresadosPeriodoAnteriorHablantesLenguaIndigena
                            self.matriculaHablantesLenguaIndigenaPAE = result.tabla.matriculaHablantesLenguaIndigena
                            self.nuevoIngresoHablantesLenguaIndigenaPAE = result.tabla.nuevoIngresoHablantesLenguaIndigena
                            self.abandonoHablantesLenguaIndigenaPAE = result.tabla.abandonoHablantesLenguaIndigena
                            self.tasaAbandonoHablantesLenguaIndigenaPAE = result.tabla.tasaAbandonoHablantesLenguaIndigena
                            self.tasaRetencionHablantesLenguaIndigenaPAE =  result.tabla.tasaRetencionHablantesLenguaIndigena
                            
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "gasto-federal-educacion-porcentaje-pib-ies":
                let resultGFEPPibIes = try? JSONDecoder().decode(GastoFederalEducacionPorcentajePibIesModel.self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultGFEPPibIes{
                            self.imagenTotalGFEPPibIes = result.grafica
                            // Total
                            self.aportacionGFEPPibIes = result.tabla.aportacion
                            self.subsidioGFEPPibIes = result.tabla.subsidio
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "gasto-federal-educacion-porcentaje-pib-entidad":
                let resultGFEPPibEEntidad = try? JSONDecoder().decode(GastoFederalEducacionPorcentajePibEntidadModel.self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = resultGFEPPibEEntidad{
                            self.imagenTotalGFEPPibEEntidad = result.grafica
                            // Total
                            self.aportacionEstatalTotalGFEPPibEEntidad = result.tabla.aportacionEstatalTotal
                            self.subsidioGFEPPibEEntidad = result.tabla.subsidio
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
