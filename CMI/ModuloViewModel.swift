import Foundation
import Combine
import SwiftUI


class ModuloViewModel : ObservableObject {
    
    
    var didChange = PassthroughSubject<ModuloViewModel, Never>()
    @Published var isTrue : Bool = true {
        didSet{
            didChange.send(self)
        }
    }
    /** Módulo I*/
    
    //tasa-bruta-escolarizacion-cobertura
    @Published var imagenTotalTBEC = ""
    @Published var imagenMujeresTBEC = ""
    @Published var imagenHombresTBEC = ""
    @Published var refereenciasTBEC = [Referencias]()
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
    @Published var refereenciasTBECEF = [Referencias]()
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
    @Published var refereenciasTBECI = [Referencias]()
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
    @Published var refereenciasTBEPPD = [Referencias]()
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
    @Published var refereenciasPETSEN = [Referencias]()
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
    @Published var refereenciasPAE = [Referencias]()
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
    @Published var refereenciasGFEPPibIes  = [Referencias]()
    // Totales gasto-federal-educacion-porcentaje-pib-ies
    @Published var aportacionGFEPPibIes = 0.0
    @Published var subsidioGFEPPibIes = 0.0
    //gasto-federal-educacion-porcentaje-pib-entidad
    @Published var imagenTotalGFEPPibEEntidad = ""
    @Published var refereenciasGFEPPibEEntidad  = [Referencias]()
    // Totales gasto-federal-educacion-porcentaje-pib-entidad
    @Published var aportacionEstatalTotalGFEPPibEEntidad = 0.0
    @Published var subsidioGFEPPibEEntidad = 0.0
    
    
    
    
    /** Módulo III*/
    
    @Published var ordinarioU006 = [OrdinarioU006]()
    @Published var graficasOrdinarioU006 = [String]()
    
    @Published var federalU006 = [FederalU006]()
    @Published var graficasFederalU006 = [String]()
    
    
    @Published var estatalU006 = [EstatalU006]()
    @Published var graficasEstatalU006 = [String]()
    
    @Published var universidadesCrisis = [UniversidadesCrisis]()
    @Published var graficaUniversidadesCrisis = [String]()
    
    @Published var extraordinarioS247 = [ExtraordinarioS247]()
    @Published var graficaExtraordinarioS247 = [String]()
    
    @Published var extraordinarioU006 = [ExtraordinarioU006]()
    @Published var graficasExtraordinarioU006 = [String]()
    
    @Published var u080 = [U080]()
    @Published var graficasU080 = [String]()
    
    @Published var indicadoresEntidad = [IndicadoresEntidad]()
    @Published var graficasIndicadoresEntidad = [String]()
    
    @Published var indicadoresSubsistema = [IndicadoresSubsistema]()
    @Published var graficasIndicadoresSubsistema = [String]()
    
    @Published var indicadoresIES = [IndicadoresIES]()
    @Published var graficasIndicadoresIES = [String]()
    
    
    /** Módulo II*/
    
    @Published var tasaBrutaEES = [TasaBrutaEES]()
    @Published var tasaBrutaEC = [TasaBrutaEC]()
    @Published var tasaBrutaECIES = [TasaBrutaECIES]()
    @Published var porcentajeDocumentosNormativos = [PorcentajeDocumentosNormativos]()
    @Published var porcentajeApoyos = [PorcentajeApoyos]()
    @Published var porcentajeCentros = [PorcentajeCentros]()
    @Published var porcentajeAbosorcionAlumnosEgresados = [PorcentajeAbosorcionAlumnosEgresados]()
    @Published var graficasPorcentajeAbosorcionAlumnosEgresados = [String]()
    
    @Published var montoPromedioRecursosRadicadosInstituciones = [MontoPromedioRecursosRadicadosInstituciones]()
    @Published var graficasMontoPromedioRecursosRadicadosInstituciones = [String]()
    
    @Published var montoPromedioRecursosRadicadosAlumnos = [MontoPromedioRecursosRadicadosAlumnos]()
    @Published var graficasMontoPromedioRecursosRadicadosAlumnos = [String]()
    
    @Published var porcentajeProfesoresTiempoCompletoIESReconocimiento = [PorcentajeProfesoresTiempoCompletoIESReconocimiento]()
    @Published var graficasPorcentajeProfesoresTiempoCompletoIESReconocimiento = [String]()
    
    @Published var porcentajeCuerposAcademicosConsolidados = [PorcentajeCuerposAcademicosConsolidados]()
    
    @Published var porcentajeReconocimientoPerfilDeseableUniversidad = [IndicadoresPorUniversidad]()
    @Published var graficasPorcentajeReconocimientoPerfilDeseableUniversidad = [String]()
    @Published var porcentajeReconocimientoPerfilDeseableSubsistema = [IndicadoresPorSubsistema]()
    @Published var graficasPorcentajeReconocimientoPerfilDeseableSubsistema = [String]()
    @Published var unionPorcentajeReconocimientoPerfilDeseable = [String]()

    @Published var porcentajeSolicitudesApoyosEstudiosPosgradoAprobadasUniversidad = [IndicadoresPorUniversidad]()
    @Published var graficasPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadasUniversidad = [String]()
    @Published var porcentajeSolicitudesApoyosEstudiosPosgradoAprobadasSubsistema = [IndicadoresPorSubsistema]()
    @Published var graficasPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadasSubsistema = [String]()
    @Published var unionPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas = [String]()
    
    @Published var porcentajeApoyosIESIncorporacionUniversidad = [IndicadoresPorUniversidad]()
    @Published var graficasPorcentajeApoyosIESIncorporacionUniversidad = [String]()
    @Published var porcentajeApoyosIESIncorporacionSubsistema = [IndicadoresPorSubsistema]()
    @Published var graficasporcentajeApoyosIESIncorporacionSubsistema = [String]()
    @Published var unionporcentajeApoyosIESIncorporacion = [String]()
    
    @Published var porcentajeCuerposAcademicosIESUniversidad = [PorcentajeCuerposAcademicosIESUniversidad]()
    @Published var graficasPorcentajeCuerposAcademicosIESUniversidad = [String]()
    @Published var porcentajeCuerposAcademicosIESSubistema = [PorcentajeCuerposAcademicosIESSubistema]()
    @Published var graficasPorcentajeCuerposAcademicosIESSubistema = [String]()
    @Published var unionPorcentajeCuerposAcademicosIES = [String]()
    
    @Published var porcentajeSolicitudesApoyoAprobadasProyectosInvestigacionUniversidad = [IndicadoresPorUniversidad]()
    @Published var graficasPorcentajeSolicitudesApoyoAprobadasProyectosInvestigacionUniversidad = [String]()
    @Published var porcentajeSolicitudesApoyoAprobadasProyectosInvestigacionSubsistema = [IndicadoresPorSubsistema]()
    @Published var graficasPorcentajeSolicitudesApoyoAprobadasProyectosInvestigacionSubsistema = [String]()
    @Published var unionporcentajeSolicitudesApoyoAprobadasProyectosInvestigacion = [String]()
    
    
    func loadInfoModI(token: String, path: String ,periodo: String) {
        guard let url = URL(string: "\(base_url_prod)/webservice/\(path)/\(periodo)") else{
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
                            self.refereenciasTBEC  = result.referencias
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
                            self.refereenciasTBECEF  = result.referencias
                            
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
                            self.refereenciasTBECI  = result.referencias
                            
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
                            self.refereenciasTBEPPD  = result.referencias
                            
                            
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
                            self.refereenciasPETSEN = result.referencias
                            
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
                            self.refereenciasPAE = result.referencias
                            
                            
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
                            self.refereenciasGFEPPibIes = result.referencias
                            
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
                            self.refereenciasGFEPPibEEntidad  = result.referencias
                            
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
    
    func loadInfoModIII(token: String, path: String ,anio: String, entidadFederativa: String, subsistema: String, universidad: String) {
        let preprareUrl = "\(base_url_prod)/webservice/\(path)/\(anio)?ejercicioFiscal=\(anio)&entidadFederativa=\(entidadFederativa)&subsistema=\(subsistema)&universidad=\(universidad)"
        guard let url = URL(string: preprareUrl.replacingOccurrences(of: "á", with: "%C3%A1").replacingOccurrences(of: "é", with: "%C3%A9").replacingOccurrences(of: "É", with: "%C3%89").replacingOccurrences(of: "í", with: "%C3%AD").replacingOccurrences(of: "ó", with: "%C3%B3").replacingOccurrences(of: "Ó", with: "%C3%93").replacingOccurrences(of: " ", with: "+").replacingOccurrences(of: "ñ", with: "%C3%B1")) else{
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {return}
            switch path{
            case "ordinario-u006":
                let result = try? JSONDecoder().decode([OrdinarioU006].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.ordinarioU006 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "federal-u006":
                let result = try? JSONDecoder().decode([FederalU006].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.federalU006 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "estatal-u006":
                let result = try? JSONDecoder().decode([EstatalU006].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.estatalU006 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "universidades-en-crisis":
                let result = try? JSONDecoder().decode([UniversidadesCrisis].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.universidadesCrisis = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "extraordinario-s247":
                let result = try? JSONDecoder().decode([ExtraordinarioS247].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.extraordinarioS247 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
                case "extraordinario-u006":
                let result = try? JSONDecoder().decode([ExtraordinarioU006].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.extraordinarioU006 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
                case "u080":
                let result = try? JSONDecoder().decode([U080].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.u080 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "indicadores-entidad":
                let result = try? JSONDecoder().decode([IndicadoresEntidad].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.indicadoresEntidad = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "indicadores-subsistema":
                let result = try? JSONDecoder().decode([IndicadoresSubsistema].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.indicadoresSubsistema = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "indicadores-ies":
                let result = try? JSONDecoder().decode([IndicadoresIES].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.indicadoresIES = result
                            self.isTrue = false
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
    
    func loadGraficasModIII(token: String, path: String ,anio: String,entidadFederativa: String, subsistema: String, universidad: String) {
        let prepareURL = "\(base_url_prod)/webservice/\(path)/\(anio)/graficas?entidadFederativa=\(entidadFederativa)&subsistema=\(subsistema)&universidad=\(universidad)"
        guard let url = URL(string: prepareURL.replacingOccurrences(of: "á", with: "%C3%A1").replacingOccurrences(of: "é", with: "%C3%A9").replacingOccurrences(of: "É", with: "%C3%89").replacingOccurrences(of: "í", with: "%C3%AD").replacingOccurrences(of: "ó", with: "%C3%B3").replacingOccurrences(of: "Ó", with: "%C3%93").replacingOccurrences(of: " ", with: "+").replacingOccurrences(of: "ñ", with: "%C3%B1")) else{
            
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {return}
            switch path{
            case "ordinario-u006":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasOrdinarioU006 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "federal-u006":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasFederalU006 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "estatal-u006":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasEstatalU006 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "universidades-en-crisis":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficaUniversidadesCrisis = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
                case "extraordinario-s247":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficaExtraordinarioS247 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "extraordinario-u006":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasExtraordinarioU006 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
                case "u080":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasU080 = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "indicadores-entidad":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasIndicadoresEntidad = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "indicadores-subsistema":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasIndicadoresSubsistema = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                case "indicadores-ies":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasIndicadoresIES = result
                            self.isTrue = false
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
    
    func loadInfoModII(token: String, path: String ,anio: String, entidadFederativa: String, subsistema: String, universidad: String) {
        let preprareUrl = "\(base_url_prod)/webservice/\(path)/\(anio)?periodo=\(anio)&entidadFederativa=\(entidadFederativa)&subsistema=\(subsistema)&universidad=\(universidad)"
        guard let url = URL(string: preprareUrl.replacingOccurrences(of: "á", with: "%C3%A1").replacingOccurrences(of: "é", with: "%C3%A9").replacingOccurrences(of: "É", with: "%C3%89").replacingOccurrences(of: "í", with: "%C3%AD").replacingOccurrences(of: "ó", with: "%C3%B3").replacingOccurrences(of: "Ó", with: "%C3%93").replacingOccurrences(of: " ", with: "%20").replacingOccurrences(of: "ñ", with: "%C3%B1")) else{
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {return}
            switch path{
            case "tasa-bruta-escolarizada":
                let result = try? JSONDecoder().decode([TasaBrutaEES].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.tasaBrutaEES = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "tasa-bruta-escolarizada-cobertura":
                let result = try? JSONDecoder().decode([TasaBrutaEC].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.tasaBrutaEC = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "tasa-bruta-escolarizacion-ies":
                let result = try? JSONDecoder().decode([TasaBrutaECIES].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.tasaBrutaECIES = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
            case "porcentaje-documentos-normativos":
                let result = try? JSONDecoder().decode([PorcentajeDocumentosNormativos].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeDocumentosNormativos = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
            case "porcentaje-profesores-tiempo-completo-ies-reconocimiento":
                let result = try? JSONDecoder().decode([PorcentajeProfesoresTiempoCompletoIESReconocimiento].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeProfesoresTiempoCompletoIESReconocimiento = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-cuerpos-academicos-consolidados":
                let result = try? JSONDecoder().decode([PorcentajeCuerposAcademicosConsolidados].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeCuerposAcademicosConsolidados = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
            case "porcentaje-reconocimiento-perfil-deseable":
                let result = try? JSONDecoder().decode([IndicadoresPorUniversidad].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeReconocimientoPerfilDeseableUniversidad = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
            case "porcentaje-reconocimiento-perfil-deseable/subsistema":
                let result = try? JSONDecoder().decode([IndicadoresPorSubsistema].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeReconocimientoPerfilDeseableSubsistema = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }

            case "porcentaje-solicitudes-apoyos-estudios-posgrado-aprobadas/subsistema":
                let result = try? JSONDecoder().decode([IndicadoresPorSubsistema].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeSolicitudesApoyosEstudiosPosgradoAprobadasSubsistema = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
            case "porcentaje-solicitudes-apoyos-estudios-posgrado-aprobadas":
                let result = try? JSONDecoder().decode([IndicadoresPorUniversidad].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeSolicitudesApoyosEstudiosPosgradoAprobadasUniversidad = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-apoyos-ies-incorporacion":
                let result = try? JSONDecoder().decode([IndicadoresPorUniversidad].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeApoyosIESIncorporacionUniversidad = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-apoyos-ies-incorporacion/subsistema":
                let result = try? JSONDecoder().decode([IndicadoresPorSubsistema].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeApoyosIESIncorporacionSubsistema = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-cuerpos-academicos-ies":
                let result = try? JSONDecoder().decode([PorcentajeCuerposAcademicosIESUniversidad].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeCuerposAcademicosIESUniversidad = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-cuerpos-academicos-ies/subsistema":
                let result = try? JSONDecoder().decode([PorcentajeCuerposAcademicosIESSubistema].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeCuerposAcademicosIESSubistema = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-solicitudes-apoyo-aprobadas-proyectos-investigacion":
                let result = try? JSONDecoder().decode([IndicadoresPorUniversidad].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeSolicitudesApoyoAprobadasProyectosInvestigacionUniversidad = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-solicitudes-apoyo-aprobadas-proyectos-investigacion/subsistema":
                let result = try? JSONDecoder().decode([IndicadoresPorSubsistema].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeSolicitudesApoyoAprobadasProyectosInvestigacionSubsistema = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-abosorcion-alumnos-egresados":
                let result = try? JSONDecoder().decode([PorcentajeAbosorcionAlumnosEgresados].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeAbosorcionAlumnosEgresados = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "monto-promedio-recursos-radicados-alumnos":
                let result = try? JSONDecoder().decode([MontoPromedioRecursosRadicadosAlumnos].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.montoPromedioRecursosRadicadosAlumnos = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "monto-promedio-recursos-radicados-instituciones":
                let result = try? JSONDecoder().decode([MontoPromedioRecursosRadicadosInstituciones].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.montoPromedioRecursosRadicadosInstituciones = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-apoyos-operacion-otorgados-centros":
                let result = try? JSONDecoder().decode([PorcentajeApoyos].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeApoyos = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-centros-organizaciones-sociedad-civil":
                let result = try? JSONDecoder().decode([PorcentajeCentros].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.porcentajeCentros = result
                            self.isTrue = false
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
    
    func loadGraficasModII(token: String, path: String ,anio: String,entidadFederativa: String, subsistema: String, universidad: String) {
        let prepareURL = "\(base_url_prod)/webservice/\(path)/\(anio)/graficas?entidadFederativa=\(entidadFederativa)&subsistema=\(subsistema)&universidad=\(universidad)"
        guard let url = URL(string: prepareURL.replacingOccurrences(of: "á", with: "%C3%A1").replacingOccurrences(of: "é", with: "%C3%A9").replacingOccurrences(of: "É", with: "%C3%89").replacingOccurrences(of: "í", with: "%C3%AD").replacingOccurrences(of: "ó", with: "%C3%B3").replacingOccurrences(of: "Ó", with: "%C3%93").replacingOccurrences(of: " ", with: "+").replacingOccurrences(of: "ñ", with: "%C3%B1")) else{
            
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {return}
            switch path{
            case "porcentaje-abosorcion-alumnos-egresados":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasPorcentajeAbosorcionAlumnosEgresados = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
            case "porcentaje-profesores-tiempo-completo-ies-reconocimiento":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasPorcentajeProfesoresTiempoCompletoIESReconocimiento = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
            case "monto-promedio-recursos-radicados-alumnos":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasMontoPromedioRecursosRadicadosAlumnos = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "monto-promedio-recursos-radicados-instituciones":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasMontoPromedioRecursosRadicadosInstituciones = result
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-reconocimiento-perfil-deseable":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasPorcentajeReconocimientoPerfilDeseableUniversidad = result
                            for i in result{
                                self.unionPorcentajeReconocimientoPerfilDeseable.append(i)
                            }
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-reconocimiento-perfil-deseable/subsistema":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasPorcentajeReconocimientoPerfilDeseableSubsistema = result
                            for i in result{
                                self.unionPorcentajeReconocimientoPerfilDeseable.append(i)
                            }
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
            case "porcentaje-solicitudes-apoyos-estudios-posgrado-aprobadas":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadasUniversidad = result
                            for i in result{
                                self.unionPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas.append(i)
                            }
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-solicitudes-apoyos-estudios-posgrado-aprobadas/subsistema":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadasSubsistema = result
                            for i in result{
                                self.unionPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas.append(i)
                            }
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-apoyos-ies-incorporacion":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasPorcentajeApoyosIESIncorporacionUniversidad = result
                            for i in result{
                                self.unionporcentajeApoyosIESIncorporacion.append(i)
                            }
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
                
            case "porcentaje-apoyos-ies-incorporacion/subsistema":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasporcentajeApoyosIESIncorporacionSubsistema = result
                            for i in result{
                                self.unionporcentajeApoyosIESIncorporacion.append(i)
                            }
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-cuerpos-academicos-ies":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasPorcentajeCuerposAcademicosIESUniversidad = result
                            for i in result{
                                self.unionPorcentajeCuerposAcademicosIES.append(i)
                            }
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-cuerpos-academicos-ies/subsistema":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasPorcentajeCuerposAcademicosIESSubistema = result
                            for i in result{
                                self.unionPorcentajeCuerposAcademicosIES.append(i)
                            }
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-solicitudes-apoyo-aprobadas-proyectos-investigacion":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasPorcentajeSolicitudesApoyoAprobadasProyectosInvestigacionUniversidad = result
                            for i in result{
                                self.unionporcentajeSolicitudesApoyoAprobadasProyectosInvestigacion.append(i)
                            }
                            self.isTrue = false
                        }
                    case 401:
                        fatalError("No autorizado \(responseHTTP.debugDescription)")
                    default:
                        fatalError("BAD REQUEST \(error.debugDescription)")
                    }
                }
            case "porcentaje-solicitudes-apoyo-aprobadas-proyectos-investigacion/subsistema":
                let result = try? JSONDecoder().decode([String].self, from: data)
                let responseHTTP = response as? HTTPURLResponse
                DispatchQueue.main.async {
                    switch responseHTTP?.statusCode {
                    case 200:
                        if let result = result{
                            self.graficasPorcentajeSolicitudesApoyoAprobadasProyectosInvestigacionSubsistema = result
                            for i in result{
                                self.unionporcentajeSolicitudesApoyoAprobadasProyectosInvestigacion.append(i)
                            }
                            self.isTrue = false
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
