import SwiftUI

struct DetalleIndicador: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var titulo: String
    @State var modulo: String
    @State var items : [String:String]
    @State var path: String
    @State var codigoFicha: String
    @State var nombreFicha: String
    @StateObject var fichaViewModel = FichaViewModel()
    @StateObject var filtroViewModel = FiltroViewModel()
    @StateObject var mouloViewModel = ModuloViewModel()
    @State var token: String
    @State var periodo: String
    @State var isPresented = false
    @State var graph : Bool = true
    
    
    var body: some View {
        switch modulo{
        case "Módulo I":
            VStack{
                ZStack{
                    ScrollView(showsIndicators: true){
                        VStack{
                            HStack{
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    Image(systemName: "chevron.left")
                                        .font(.title3.bold())
                                })
                                Spacer()
                                Text("\(titulo) (\(periodo))")
                                    .font(.title3.bold())
                                    .multilineTextAlignment(.center)
                                Spacer()
                                
                            }.foregroundColor(Color("gris_2"))
                                .padding([.horizontal, .top])
                            
                            NavigationLink(destination: FichaModulo_I(titulo: nombreFicha, path: path, token: self.token).environmentObject(fichaViewModel)){
                                Text("\(nombreFicha)")
                                    .font(.body)
                                    .underline()
                                    .multilineTextAlignment(.center)
                                    .padding()
                            }
                            ForEach(items.sorted(by: >), id:\.key){key, value in
                                
                                VStack{
                                    switch path{
                                    case "tasa-bruta-escolarizacion-cobertura":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaTotalGlobalTBEC)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.censoTotalGlobalTBEC)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaEscolarizacionGlobalTBEC)), ImagenGrafica: self.mouloViewModel.imagenTotalTBEC, referencias: self.mouloViewModel.refereenciasTBEC, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaMujGlobalTBEC)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.censoMujGlobalTBEC)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaMujeresGlobalTBEC)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBEC, referencias: self.mouloViewModel.refereenciasTBEC, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaHomGlobalTBEC)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.censoHomGlobalTBEC)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaHombresGlobalTBEC)), ImagenGrafica: self.mouloViewModel.imagenHombresTBEC, referencias: self.mouloViewModel.refereenciasTBEC, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-cobertura-entidad-federativa":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionTBECEF)), ImagenGrafica: self.mouloViewModel.imagenTotalTBECEF, referencias: self.mouloViewModel.refereenciasTBECEF, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionMujeresTBECEF)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBECEF, referencias: self.mouloViewModel.refereenciasTBECEF, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionHombresTBECEF)), ImagenGrafica: self.mouloViewModel.imagenHombresTBECEF, referencias: self.mouloViewModel.refereenciasTBECEF, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-cobertura-institucion":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalTSUPATBECI)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.totalLicenciaturaTBECI)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaTotalTBECI)")).replacingOccurrences(of: "{3}", with: calcularPorcentaje(monto: self.mouloViewModel.contrubucionDGESUITBECI)), ImagenGrafica: self.mouloViewModel.imagenTotalTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalMujeresTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionDGESUIMujeresTBECI)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalHombresTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionDGESUIHombresTBECI)), ImagenGrafica: self.mouloViewModel.imagenHombresTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalDiscapacitadosTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeConDiscapacidadTBECI)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalHablanteLenguaIndigenaTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeHablanteLenguaIndigenaTBECI)), ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Escolarizado":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalEscolarizadoTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeEscolarizadoTBECI)), ImagenGrafica: self.mouloViewModel.imagenEscolarizadoTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "No escolarizado":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalNoEscolarizadoTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeNoEscolarizadoTBECI)), ImagenGrafica: self.mouloViewModel.imagenNoEscolarizadoTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mixto":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalMixtoTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeMixtoTBECI)), ImagenGrafica: self.mouloViewModel.imagenMixtoTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-poblacion-primeros-cuatro-deciles":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.totalEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaGeneralTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenTotalTBEPPD, referencias: self.mouloViewModel.refereenciasTBEPPD, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.mujeresTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.mujeresEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaEscolarizacionMujeresTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBEPPD, referencias: self.mouloViewModel.refereenciasTBEPPD, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.hombresTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.hombresEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaEscolarizacionHombresTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenHombresTBEPPD, referencias: self.mouloViewModel.refereenciasTBEPPD, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.discapacitadosTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.discapacitadosEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaDiscapacitadosTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosTBEPPD, referencias: self.mouloViewModel.refereenciasTBEPPD, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.hablantesLenguaIndigenaTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.hablantesLenguaIndigenaEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaHablantesLenguaIndigenaTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaTBEPPD, referencias: self.mouloViewModel.refereenciasTBEPPD, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "porcentaje-eficiencia-terminal-sistema-educativo-nacional":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorGeneralPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasGeneralPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalGeneralPETSEN)), ImagenGrafica: self.mouloViewModel.imagenTotalPETSEN, referencias: self.mouloViewModel.refereenciasPETSEN, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorMujeresPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasMujeresPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalMujeresPETSEN)), ImagenGrafica: self.mouloViewModel.imagenMujeresPETSEN, referencias: self.mouloViewModel.refereenciasPETSEN, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorHombresPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasHombresPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalHombresPETSEN)), ImagenGrafica: self.mouloViewModel.imagenHombresPETSEN, referencias: self.mouloViewModel.refereenciasPETSEN, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorDiscapacitadosPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasDiscapacitadosPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalDiscapacitadosPETSEN)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosPETSEN, referencias: self.mouloViewModel.refereenciasPETSEN, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "porcentaje-abandono-escolar":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorGeneralPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorGeneralPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaGeneralPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoGeneralPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoGeneralPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoGeneralPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionGeneralPAE)), ImagenGrafica: self.mouloViewModel.imagenTotalPAE, referencias: self.mouloViewModel.refereenciasPAE, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorMujeresPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorMujeresPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaMujeresPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoMujeresPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoMujeresPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoMujeresPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionMujeresPAE)), ImagenGrafica: self.mouloViewModel.imagenMujeresPAE, referencias: self.mouloViewModel.refereenciasPAE, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorHombresPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorHombresPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaHombresPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoHombresPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoHombresPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoHombresPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionHombresPAE)), ImagenGrafica: self.mouloViewModel.imagenHombresPAE, referencias: self.mouloViewModel.refereenciasPAE, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorDiscapacitadosPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorDiscapacitadosPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaDiscapacitadosPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoDiscapacitadosPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoDiscapacitadosPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoDiscapacitadosPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionDiscapacitadosPAE)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosPAE, referencias: self.mouloViewModel.refereenciasPAE, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoHablantesLenguaIndigenaPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionHablantesLenguaIndigenaPAE)), ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaPAE, referencias: self.mouloViewModel.refereenciasPAE, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "gasto-federal-educacion-porcentaje-pib-ies":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResultPIB(basedOn: "\(self.mouloViewModel.aportacionGFEPPibIes)")).replacingOccurrences(of: "{1}", with: calcularPorcentajePIB(monto: self.mouloViewModel.subsidioGFEPPibIes)), ImagenGrafica: self.mouloViewModel.imagenTotalGFEPPibIes, referencias: self.mouloViewModel.refereenciasGFEPPibIes, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "gasto-federal-educacion-porcentaje-pib-entidad":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentajePIB(monto: self.mouloViewModel.subsidioGFEPPibEEntidad)), ImagenGrafica: self.mouloViewModel.imagenTotalGFEPPibEEntidad, referencias: self.mouloViewModel.refereenciasGFEPPibEEntidad, token: token, path: self.path, periodo: self.periodo)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                    default:
                                        fatalError("No existe el path")
                                    }
                                }
                            }
                        }
                    }.edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }.onAppear{
                    self.mouloViewModel.loadInfoModI(token: self.token, path: self.path, periodo: periodo.replacingOccurrences(of: " ", with: "%20"))
                }
            }.navigationBarHidden(true)
            
        case "Módulo II":
            VStack{
                ZStack{
                    VStack{
                        HStack{
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "chevron.left")
                                    .font(.title3.bold())
                            })
                            Spacer()
                            Text("\(titulo)")
                                .font(.title3.bold())
                                .multilineTextAlignment(.center)
                            Spacer()
                            
                        }.foregroundColor(Color("gris_2"))
                            .padding([.horizontal, .top])
                        
                        
                        Filtro(mod: modulo, token: self.token).environmentObject(filtroViewModel)
                        VStack{
                            switch path{
                            case "tasa-bruta-escolarizada":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    ListadoTasaBrutaEES(items: items, token: token, path: path, periodo: filtroViewModel.periodoSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }else{
                                    ListadoTasaBrutaEES(items: items, token: token, path: path, periodo: filtroViewModel.periodoSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }
                                
                            case "tasa-bruta-escolarizada-cobertura":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    ListadoTasaBrutaEC(items: items, token: token, path: path, periodo: filtroViewModel.periodoSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }else{
                                    ListadoTasaBrutaEC(items: items, token: token, path: path, periodo: filtroViewModel.periodoSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }
                                
                            case "tasa-bruta-escolarizacion-ies":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    ListadoTasaBrutaECIES(items: items, token: token, path: path, periodo: filtroViewModel.periodoSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }else{
                                    ListadoTasaBrutaECIES(items: items, token: token, path: path, periodo: filtroViewModel.periodoSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }
                                
                            case "porcentaje-documentos-normativos":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    ListadoPorcentajeDocumentosNormativos(token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }else{
                                    ListadoPorcentajeDocumentosNormativos(token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }
                                
                            case "porcentaje-profesores-tiempo-completo-ies-reconocimiento":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("lista_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(!graph)
                                    
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("grafica_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(graph)
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    if graph{
                                        GraficaPorcentajeProfesoresTiempoCompletoIESReconocimiento(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ListadoPorcentajeProfesoresTiempoCompletoIESReconocimiento(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph{
                                        GraficaPorcentajeProfesoresTiempoCompletoIESReconocimiento(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ListadoPorcentajeProfesoresTiempoCompletoIESReconocimiento(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                                
                                
                            case "porcentaje-cuerpos-academicos-consolidados":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    ListadoPorcentajeCuerposAcademicosConsolidados(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }else{
                                    ListadoPorcentajeCuerposAcademicosConsolidados(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }
                                
                                
                                
                            case "porcentaje-reconocimiento-perfil-deseable":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("lista_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(!graph)
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("grafica_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(graph)
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    if graph{
                                        GraficaPorcentajeReconocimientoPerfilDeseable(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ScrollView(.vertical, showsIndicators: true){
                                            ListadoSubsistemasPorcentajeReconocimientoPerfilDeseable(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                            ListadoUniversidadesPorcentajeReconocimientoPerfilDeseable(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        }
                                        
                                    }
                                }else{
                                    if graph{
                                        GraficaPorcentajeReconocimientoPerfilDeseable(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ScrollView(.vertical, showsIndicators: true){
                                            ListadoSubsistemasPorcentajeReconocimientoPerfilDeseable(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                            ListadoUniversidadesPorcentajeReconocimientoPerfilDeseable(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        }
                                        
                                    }
                                }
                                
                                
                            case "porcentaje-solicitudes-apoyos-estudios-posgrado-aprobadas":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("lista_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(!graph)
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("grafica_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(graph)
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    if graph{
                                        GraficaPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ScrollView(.vertical, showsIndicators: true){
                                            ListadoSubsistemaPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                            ListadoUniversidadPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        }
                                        
                                    }
                                }else{
                                    if graph{
                                        GraficaPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ScrollView(.vertical, showsIndicators: true){
                                            ListadoSubsistemaPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                            ListadoUniversidadPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        }
                                        
                                    }
                                }
                                
                            case "porcentaje-apoyos-ies-incorporacion":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("lista_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(!graph)
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("grafica_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(graph)
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    if graph{
                                        GraficaPorcentajeApoyosIESIncorporacion(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ScrollView(.vertical, showsIndicators: true){
                                            ListadoSubsistemaPorcentajeApoyosIESIncorporacion(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                            ListadoUniversidadPorcentajeApoyosIESIncorporacion(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        }
                                        
                                    }
                                }else{
                                    if graph{
                                        GraficaPorcentajeApoyosIESIncorporacion(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ScrollView(.vertical, showsIndicators: true){
                                            ListadoSubsistemaPorcentajeApoyosIESIncorporacion(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                            ListadoUniversidadPorcentajeApoyosIESIncorporacion(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        }
                                        
                                    }
                                }
                                
                                
                            case "porcentaje-cuerpos-academicos-ies":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("lista_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(!graph)
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("grafica_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(graph)
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    if graph{
                                        GraficaPorcentajeCuerposAcademicosIES(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ScrollView(.vertical, showsIndicators: true){
                                            ListadoSubsistemaPorcentajeCuerposAcademicosIES(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                            ListadoUniversidadPorcentajeCuerposAcademicosIES(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        }
                                        
                                    }
                                }else{
                                    if graph{
                                        GraficaPorcentajeCuerposAcademicosIES(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ScrollView(.vertical, showsIndicators: true){
                                            ListadoSubsistemaPorcentajeCuerposAcademicosIES(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                            ListadoUniversidadPorcentajeCuerposAcademicosIES(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        }
                                        
                                    }
                                }
                                
                                
                            case "porcentaje-solicitudes-apoyo-aprobadas-proyectos-investigacion":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("lista_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(!graph)
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("grafica_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(graph)
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    if graph{
                                        GraficaPorcentajeSolicitudesApoyoAprobadasProyectosInvestigacion(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ScrollView(.vertical, showsIndicators: true){
                                            ListadoSubsistemaPorcentajeSolicitudesApoyoAprobadasProyectosInvestigacion(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                            ListadoUniversidadPorcentajeSolicitudesApoyoAprobadasProyectosInvestigacion(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        }
                                        
                                    }
                                }else{
                                    if graph{
                                        GraficaPorcentajeSolicitudesApoyoAprobadasProyectosInvestigacion(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ScrollView(.vertical, showsIndicators: true){
                                            ListadoSubsistemaPorcentajeSolicitudesApoyoAprobadasProyectosInvestigacion(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                            ListadoUniversidadPorcentajeSolicitudesApoyoAprobadasProyectosInvestigacion(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        }
                                        
                                    }
                                }
                                
                            case "porcentaje-abosorcion-alumnos-egresados":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("lista_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(!graph)
                                    
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("grafica_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(graph)
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    if graph{
                                        GraficasPorcentajeAbsorcionAlumnosEgresados(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ListadoPorcentajeAbsorcionAlumnosEgresados(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph{
                                        GraficasPorcentajeAbsorcionAlumnosEgresados(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ListadoPorcentajeAbsorcionAlumnosEgresados(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                                
                                
                            case "monto-promedio-recursos-radicados-alumnos":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                        
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("lista_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(!graph)
                                    
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("grafica_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(graph)
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    if graph{
                                        GraficaMontoPromedioRecursosRadicadosAlumnos(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ListadoMontoPromedioRecursosRadicadosAlumnos(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        
                                    }
                                }else{
                                    if graph{
                                        GraficaMontoPromedioRecursosRadicadosAlumnos(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ListadoMontoPromedioRecursosRadicadosAlumnos(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                        
                                    }
                                }
                                
                            case "monto-promedio-recursos-radicados-instituciones":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                        
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("lista_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(!graph)
                                    
                                    
                                    Button(action: {
                                        self.graph.toggle()
                                    }){
                                        Image("grafica_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }.disabled(graph)
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    if graph{
                                        GraficaMontoPromedioRecursosRadicadosInstituciones(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ListadoMontoPromedioRecursosRadicadosInstituciones(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph{
                                        GraficaMontoPromedioRecursosRadicadosInstituciones(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ListadoMontoPromedioRecursosRadicadosInstituciones(items: items, token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                                
                                
                            case "porcentaje-centros-organizaciones-sociedad-civil":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    ListadoPorcentajeCentros(token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }else{
                                    ListadoPorcentajeCentros(token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }
                                
                            case "porcentaje-apoyos-operacion-otorgados-centros":
                                HStack(alignment: .center){
                                    NavigationLink(destination: FichaModulo_II(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                        Text("\(nombreFicha)")
                                            .font(.body)
                                            .underline()
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Button(action: {
                                        self.isPresented.toggle()
                                    }){
                                        Image("Image_Excel")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                }.padding(.horizontal)
                                if filtroViewModel.cambio{
                                    ListadoPorcentajeApoyos(token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }else{
                                    ListadoPorcentajeApoyos(token: token, path: path, periodo: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                }
                                
                            default:
                                EmptyView()
                            }
                        }.onAppear{
                            
                            if self.filtroViewModel.anios.isEmpty && self.filtroViewModel.subsistemas.isEmpty && self.filtroViewModel.entidadesFederativas.isEmpty && self.filtroViewModel.universidades.isEmpty{
                                self.filtroViewModel.loadFiltroModII(token: self.token, path: self.path)
                            }
                            
                        }
                        Spacer()
                    }
                }.edgesIgnoringSafeArea(.all)
                    .navigationBarHidden(true)
            }
            .navigationBarHidden(true)
            .sheet(isPresented: $isPresented, content: {
                VStack {
                    if path == "tasa-bruta-escolarizada" || path == "tasa-bruta-escolarizada-cobertura" || path == "tasa-bruta-escolarizacion-ies"{
                        WebViewExcel(token: self.token, path: self.path, periodo: filtroViewModel.periodoSeleccionado, modulo: "III", entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                    }else{
                        WebViewExcel(token: self.token, path: self.path, periodo: filtroViewModel.anioSeleccionado, modulo: "III", entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                    }
                    
                    HStack{
                        Spacer()
                        Button(action: {
                            self.isPresented.toggle()
                        }, label: {
                            Text("Listo")
                                .font(.headline.bold())
                                .padding([.trailing])
                        })
                    }.foregroundColor(.blue)
                    
                }
            })
            
        case "Módulo III":
            VStack{
                ZStack{
                    VStack{
                        HStack{
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "chevron.left")
                                    .font(.title3.bold())
                            })
                            Spacer()
                            Text("\(titulo)")
                                .font(.title3.bold())
                                .multilineTextAlignment(.center)
                            Spacer()
                            
                        }.foregroundColor(Color("gris_2"))
                            .padding([.horizontal, .top])
                        
                        Filtro(mod: modulo, token: self.token).environmentObject(filtroViewModel)
                        HStack(alignment: .center){
                            NavigationLink(destination: FichaModulo_III(titulo: nombreFicha,path: path, token: token).environmentObject(fichaViewModel)){
                                Text("\(nombreFicha)")
                                    .font(.body)
                                    .underline()
                                    .multilineTextAlignment(.leading)
                            }
                            Spacer()
                            Button(action: {
                                self.isPresented.toggle()
                            }){
                                Image("Image_Excel")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }
                            
                            Button(action: {
                                self.graph.toggle()
                            }){
                                Image("lista_icon")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }.disabled(!graph)
                            
                            
                            Button(action: {
                                self.graph.toggle()
                            }){
                                Image("grafica_icon")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }.disabled(graph)
                        }.padding(.horizontal)
                        
                        VStack{
                            switch path{
                            case "ordinario-u006":
                                if filtroViewModel.cambio{
                                    if graph{
                                        GraficaOrdU006(token:token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ListadoOrdU006(items: items,token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph{
                                        GraficaOrdU006(token:token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else{
                                        ListadoOrdU006(items: items,token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                            case "federal-u006":
                                if filtroViewModel.cambio{
                                    if graph {
                                        GraficaFederalU006(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoFederalU006(items: items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph {
                                        GraficaFederalU006(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoFederalU006(items: items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                                
                            case "estatal-u006":
                                if filtroViewModel.cambio{
                                    if graph {
                                        GraficaEstatalU006(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoEstatalU006(items: items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph {
                                        GraficaEstatalU006(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoEstatalU006(items: items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                                
                            case "universidades-en-crisis":
                                if filtroViewModel.cambio{
                                    if graph {
                                        GraficaUniversidadesCrisis(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoUniversidadesCrisis(items: self.items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph {
                                        GraficaUniversidadesCrisis(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoUniversidadesCrisis(items: self.items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                                
                            case "extraordinario-s247":
                                if filtroViewModel.cambio{
                                    if graph {
                                        GraficaExtraordinarioS247(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoExtraordinarioS247(items: self.items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph {
                                        GraficaExtraordinarioS247(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoExtraordinarioS247(items: self.items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                                
                            case "extraordinario-u006":
                                if filtroViewModel.cambio{
                                    if graph {
                                        GraficaExtraordinarioU006(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoExtraordinarioU006(items: self.items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph {
                                        GraficaExtraordinarioU006(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoExtraordinarioU006(items: self.items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                                
                            case "u080":
                                if filtroViewModel.cambio{
                                    if graph {
                                        GraficaU080(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoU080(items: items,  token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph {
                                        GraficaU080(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoU080(items: items,  token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                                
                            case "indicadores-entidad":
                                if filtroViewModel.cambio{
                                    if graph {
                                        GraficaIndicadoresEntidad(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoIndicadoresEntidad(items: items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph {
                                        GraficaIndicadoresEntidad(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoIndicadoresEntidad(items: items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                                
                            case "indicadores-subsistema":
                                if filtroViewModel.cambio{
                                    if graph {
                                        GraficaIndicadoresSubsistema(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoIndicadoresSubsistema(items: items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph {
                                        GraficaIndicadoresSubsistema(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoIndicadoresSubsistema(items: items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                                
                            case "indicadores-ies":
                                if filtroViewModel.cambio{
                                    if graph {
                                        GraficaIndicadoresIES(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoIndicadoresIES(items: items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }else{
                                    if graph {
                                        GraficaIndicadoresIES(token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }else {
                                        ListadoIndicadoresIES(items: items, token: token, path: path, anio: filtroViewModel.anioSeleccionado, entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                                    }
                                }
                            default:
                                EmptyView()
                                
                            }
                        }
                        Spacer()
                        
                    }
                }.onAppear{
                    if self.filtroViewModel.anios.isEmpty && self.filtroViewModel.subsistemas.isEmpty && self.filtroViewModel.entidadesFederativas.isEmpty && self.filtroViewModel.universidades.isEmpty{
                        self.filtroViewModel.loadFiltroModIII(token: self.token, path: self.path)
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .navigationBarHidden(true)
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .sheet(isPresented: $isPresented, content: {
                VStack {
                    WebViewExcel(token: self.token, path: self.path, periodo: filtroViewModel.anioSeleccionado, modulo: "III", entidadFederativa: filtroViewModel.entidadFederativaSeleccionado, subsistema: filtroViewModel.subsistemaSeleccionado, universidad: filtroViewModel.universidadSeleccionado)
                    HStack{
                        Spacer()
                        Button(action: {
                            self.isPresented.toggle()
                        }, label: {
                            Text("Listo")
                                .font(.headline.bold())
                                .padding([.trailing])
                        })
                    }.foregroundColor(.blue)
                    
                }
            })
        default:
            EmptyView()
            
        }
    }
}
