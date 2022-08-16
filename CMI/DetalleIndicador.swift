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
    @EnvironmentObject var mouloViewModel : ModuloViewModel
    @EnvironmentObject var auth : AuthUser
    
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
                            NavigationLink(destination: FichaModulo_I(titulo: nombreFicha, path: path, token: auth.token).environmentObject(fichaViewModel)){
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
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaTotalGlobalTBEC)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.censoTotalGlobalTBEC)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaEscolarizacionGlobalTBEC)), ImagenGrafica: self.mouloViewModel.imagenTotalTBEC)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaMujGlobalTBEC)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.censoMujGlobalTBEC)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaMujeresGlobalTBEC)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBEC)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaHomGlobalTBEC)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.censoHomGlobalTBEC)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaHombresGlobalTBEC)), ImagenGrafica: self.mouloViewModel.imagenHombresTBEC)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-cobertura-entidad-federativa":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionTBECEF)), ImagenGrafica: self.mouloViewModel.imagenTotalTBECEF)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionMujeresTBECEF)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBECEF)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionHombresTBECEF)), ImagenGrafica: self.mouloViewModel.imagenHombresTBECEF)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-cobertura-institucion":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalTSUPATBECI)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.totalLicenciaturaTBECI)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaTotalTBECI)")).replacingOccurrences(of: "{3}", with: calcularPorcentaje(monto: self.mouloViewModel.contrubucionDGESUITBECI)), ImagenGrafica: self.mouloViewModel.imagenTotalTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalMujeresTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionDGESUIMujeresTBECI)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalHombresTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.contribucionDGESUIHombresTBECI)), ImagenGrafica: self.mouloViewModel.imagenHombresTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalDiscapacitadosTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeConDiscapacidadTBECI)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalHablanteLenguaIndigenaTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeHablanteLenguaIndigenaTBECI)), ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Escolarizado":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalEscolarizadoTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeEscolarizadoTBECI)), ImagenGrafica: self.mouloViewModel.imagenEscolarizadoTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "No escolarizado":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalNoEscolarizadoTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeNoEscolarizadoTBECI)), ImagenGrafica: self.mouloViewModel.imagenNoEscolarizadoTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mixto":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalMixtoTBECI)")).replacingOccurrences(of: "{1}", with: calcularPorcentaje(monto: self.mouloViewModel.porcentajeMixtoTBECI)), ImagenGrafica: self.mouloViewModel.imagenMixtoTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-poblacion-primeros-cuatro-deciles":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.totalTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.totalEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaGeneralTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenTotalTBEPPD)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.mujeresTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.mujeresEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaEscolarizacionMujeresTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenMujeresTBEPPD)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.hombresTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.hombresEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaEscolarizacionHombresTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenHombresTBEPPD)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.discapacitadosTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.discapacitadosEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaDiscapacitadosTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosTBEPPD)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.hablantesLenguaIndigenaTBEPPD)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.hablantesLenguaIndigenaEnRangoDeEdadTBEPPD)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaHablantesLenguaIndigenaTBEPPD)), ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaTBEPPD)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "porcentaje-eficiencia-terminal-sistema-educativo-nacional":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorGeneralPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasGeneralPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalGeneralPETSEN)), ImagenGrafica: self.mouloViewModel.imagenTotalPETSEN)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorMujeresPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasMujeresPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalMujeresPETSEN)), ImagenGrafica: self.mouloViewModel.imagenMujeresPETSEN)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorHombresPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasHombresPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalHombresPETSEN)), ImagenGrafica: self.mouloViewModel.imagenHombresPETSEN)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosCicloAnteriorDiscapacitadosPETSEN)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoSeisCiclosAtrasDiscapacitadosPETSEN)")).replacingOccurrences(of: "{2}", with: calcularPorcentaje(monto: self.mouloViewModel.eficienciaTerminalDiscapacitadosPETSEN)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosPETSEN)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "porcentaje-abandono-escolar":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorGeneralPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorGeneralPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaGeneralPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoGeneralPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoGeneralPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoGeneralPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionGeneralPAE)), ImagenGrafica: self.mouloViewModel.imagenTotalPAE)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorMujeresPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorMujeresPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaMujeresPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoMujeresPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoMujeresPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoMujeresPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionMujeresPAE)), ImagenGrafica: self.mouloViewModel.imagenMujeresPAE)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorHombresPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorHombresPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaHombresPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoHombresPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoHombresPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoHombresPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionHombresPAE)), ImagenGrafica: self.mouloViewModel.imagenHombresPAE)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorDiscapacitadosPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorDiscapacitadosPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaDiscapacitadosPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoDiscapacitadosPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoDiscapacitadosPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoDiscapacitadosPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionDiscapacitadosPAE)), ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosPAE)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaPeriodoAnteriorHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{1}", with: formatResult(basedOn: "\(self.mouloViewModel.egresadosPeriodoAnteriorHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{2}", with: formatResult(basedOn: "\(self.mouloViewModel.matriculaHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{3}", with: formatResult(basedOn: "\(self.mouloViewModel.nuevoIngresoHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{4}", with: formatResult(basedOn: "\(self.mouloViewModel.abandonoHablantesLenguaIndigenaPAE)")).replacingOccurrences(of: "{5}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaAbandonoHablantesLenguaIndigenaPAE)).replacingOccurrences(of: "{6}", with: calcularPorcentaje(monto: self.mouloViewModel.tasaRetencionHablantesLenguaIndigenaPAE)), ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaPAE)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "gasto-federal-educacion-porcentaje-pib-ies":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: formatResultPIB(basedOn: "\(self.mouloViewModel.aportacionGFEPPibIes)")).replacingOccurrences(of: "{1}", with: calcularPorcentajePIB(monto: self.mouloViewModel.subsidioGFEPPibIes)), ImagenGrafica: self.mouloViewModel.imagenTotalGFEPPibIes)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "gasto-federal-educacion-porcentaje-pib-entidad":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value.replacingOccurrences(of: "{0}", with: calcularPorcentajePIB(monto: self.mouloViewModel.subsidioGFEPPibEEntidad)), ImagenGrafica: self.mouloViewModel.imagenTotalGFEPPibEEntidad)){
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
                            Filtro(mod: modulo)
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
                            Filtro(mod: modulo)
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
                    self.mouloViewModel.loadInfo(token: self.auth.token, path: self.path, periodo: "2019%20-%202020")
                }
            }
            
        }.navigationBarHidden(true)
    }
}
