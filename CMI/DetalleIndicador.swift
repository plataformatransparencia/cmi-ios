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
    @StateObject var excelViewModel = ExcelViewModel()
    @EnvironmentObject var mouloViewModel : ModuloViewModel
    @State var token: String
    @State var periodo: String
    
    var body: some View {
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
                            Text("\(titulo)")
                                .font(.title3.bold())
                                .multilineTextAlignment(.center)
                            Spacer()
                            
                        }.foregroundColor(Color("gris_2"))
                            .padding([.horizontal, .top])
                        
                        switch modulo{
                        case "Módulo I":
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
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaTotalGlobalTBEC)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.censoTotalGlobalTBEC)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaEscolarizacionGlobalTBEC)), ImagenGrafica: self.mouloViewModel.imagenTotalTBEC, referencias: self.mouloViewModel.refereenciasTBEC, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaMujGlobalTBEC)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.censoMujGlobalTBEC)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaMujeresGlobalTBEC)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBEC, referencias: self.mouloViewModel.refereenciasTBEC, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaHomGlobalTBEC)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.censoHomGlobalTBEC)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaHombresGlobalTBEC)), ImagenGrafica: self.mouloViewModel.imagenHombresTBEC, referencias: self.mouloViewModel.refereenciasTBEC, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-cobertura-entidad-federativa":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionTBECEF)), ImagenGrafica: self.mouloViewModel.imagenTotalTBECEF, referencias: self.mouloViewModel.refereenciasTBECEF, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionMujeresTBECEF)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBECEF, referencias: self.mouloViewModel.refereenciasTBECEF, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionHombresTBECEF)), ImagenGrafica: self.mouloViewModel.imagenHombresTBECEF, referencias: self.mouloViewModel.refereenciasTBECEF, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-cobertura-institucion":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalTSUPATBECI)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.totalLicenciaturaTBECI)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaTotalTBECI)")).replacingOccurrences(of: "{3}", with: calcularPorcentaje(monto: self.mouloViewModel.contrubucionDGESUITBECI)), ImagenGrafica: self.mouloViewModel.imagenTotalTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalMujeresTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionDGESUIMujeresTBECI)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalHombresTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionDGESUIHombresTBECI)), ImagenGrafica: self.mouloViewModel.imagenHombresTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalDiscapacitadosTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeConDiscapacidadTBECI)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalHablanteLenguaIndigenaTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeHablanteLenguaIndigenaTBECI)), ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Escolarizado":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalEscolarizadoTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeEscolarizadoTBECI)), ImagenGrafica: self.mouloViewModel.imagenEscolarizadoTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "No escolarizado":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalNoEscolarizadoTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeNoEscolarizadoTBECI)), ImagenGrafica: self.mouloViewModel.imagenNoEscolarizadoTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mixto":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalMixtoTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeMixtoTBECI)), ImagenGrafica: self.mouloViewModel.imagenMixtoTBECI, referencias: self.mouloViewModel.refereenciasTBECI, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-poblacion-primeros-cuatro-deciles":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.totalEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaGeneralTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenTotalTBEPPD, referencias: self.mouloViewModel.refereenciasTBEPPD, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.mujeresTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.mujeresEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaEscolarizacionMujeresTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBEPPD, referencias: self.mouloViewModel.refereenciasTBEPPD, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.hombresTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.hombresEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaEscolarizacionHombresTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenHombresTBEPPD, referencias: self.mouloViewModel.refereenciasTBEPPD, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.discapacitadosTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.discapacitadosEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaDiscapacitadosTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosTBEPPD, referencias: self.mouloViewModel.refereenciasTBEPPD, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.hablantesLenguaIndigenaTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.hablantesLenguaIndigenaEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaHablantesLenguaIndigenaTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaTBEPPD, referencias: self.mouloViewModel.refereenciasTBEPPD, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "porcentaje-eficiencia-terminal-sistema-educativo-nacional":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorGeneralPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasGeneralPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalGeneralPETSEN)), ImagenGrafica: self.mouloViewModel.imagenTotalPETSEN, referencias: self.mouloViewModel.refereenciasPETSEN, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorMujeresPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasMujeresPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalMujeresPETSEN)), ImagenGrafica: self.mouloViewModel.imagenMujeresPETSEN, referencias: self.mouloViewModel.refereenciasPETSEN, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorHombresPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasHombresPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalHombresPETSEN)), ImagenGrafica: self.mouloViewModel.imagenHombresPETSEN, referencias: self.mouloViewModel.refereenciasPETSEN, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorDiscapacitadosPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasDiscapacitadosPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalDiscapacitadosPETSEN)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosPETSEN, referencias: self.mouloViewModel.refereenciasPETSEN, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "porcentaje-abandono-escolar":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorGeneralPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorGeneralPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaGeneralPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoGeneralPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoGeneralPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoGeneralPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionGeneralPAE)), ImagenGrafica: self.mouloViewModel.imagenTotalPAE, referencias: self.mouloViewModel.refereenciasPAE, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorMujeresPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorMujeresPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaMujeresPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoMujeresPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoMujeresPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoMujeresPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionMujeresPAE)), ImagenGrafica: self.mouloViewModel.imagenMujeresPAE, referencias: self.mouloViewModel.refereenciasPAE, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorHombresPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorHombresPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaHombresPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoHombresPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoHombresPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoHombresPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionHombresPAE)), ImagenGrafica: self.mouloViewModel.imagenHombresPAE, referencias: self.mouloViewModel.refereenciasPAE, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorDiscapacitadosPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorDiscapacitadosPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaDiscapacitadosPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoDiscapacitadosPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoDiscapacitadosPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoDiscapacitadosPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionDiscapacitadosPAE)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosPAE, referencias: self.mouloViewModel.refereenciasPAE, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoHablantesLenguaIndigenaPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionHablantesLenguaIndigenaPAE)), ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaPAE, referencias: self.mouloViewModel.refereenciasPAE, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "gasto-federal-educacion-porcentaje-pib-ies":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResultPIB(basedOn: "\(self.mouloViewModel.aportacionGFEPPibIes)")).replacingOccurrences(of: "{1}", with: calcularPorcentajePIB(monto: self.mouloViewModel.subsidioGFEPPibIes)), ImagenGrafica: self.mouloViewModel.imagenTotalGFEPPibIes, referencias: self.mouloViewModel.refereenciasGFEPPibIes, token: token, path: self.path).environmentObject(excelViewModel)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "gasto-federal-educacion-porcentaje-pib-entidad":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentajePIB(monto: self.mouloViewModel.subsidioGFEPPibEEntidad)), ImagenGrafica: self.mouloViewModel.imagenTotalGFEPPibEEntidad, referencias: self.mouloViewModel.refereenciasGFEPPibEEntidad, token: token, path: self.path).environmentObject(excelViewModel)){
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
                            
                        case "Módulo II":
                            Filtro(mod: modulo,token: self.token).environmentObject(filtroViewModel)
                            HStack(alignment: .center){
                                NavigationLink(destination: FichaModulo_II(titulo: nombreFicha)){
                                    Text("\(nombreFicha)")
                                        .font(.body)
                                        .underline()
                                        .multilineTextAlignment(.leading)
                                }.padding(.horizontal)
                                Spacer()
                                Button(action: {
                                    print("descarga de excel")
                                }){
                                    Image("Image_Excel")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                }.padding(.horizontal)
                            }
                            
                        case "Módulo III":
                            Filtro(mod: modulo, token: self.token).environmentObject(filtroViewModel)
                            HStack(alignment: .center){
                                NavigationLink(destination: FichaModulo_III(titulo: nombreFicha)){
                                    Text("\(nombreFicha)")
                                        .font(.body)
                                        .underline()
                                        .multilineTextAlignment(.leading)
                                }.padding(.horizontal)
                                Spacer()
                                Button(action: {
                                    print("descarga de excel")
                                }){
                                    Image("Image_Excel")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                }.padding(.horizontal)
                            }
                        default:
                            EmptyView()
                        }
                    }
                }.edgesIgnoringSafeArea(.all)
                    .navigationBarHidden(true)
            }.onAppear{
                if modulo == "Módulo I" {
                    self.mouloViewModel.loadInfo(token: self.token, path: self.path, periodo: periodo.replacingOccurrences(of: " ", with: "%20"))
                }
            }
            
        }.navigationBarHidden(true)
    }
}
