import SwiftUI

struct DetalleIndicador: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var titulo: String
    @State var modulo: String
    @State var items : [String:String]
    @State var path: String
    @State var codigoFicha: String
    @State var nombreFicha: String
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
                            NavigationLink(destination: FichaModulo_I(titulo: nombreFicha)){
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
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenTotalTBEC)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenMujeresTBEC)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenHombresTBEC)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-cobertura-entidad-federativa":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenTotalTBECEF)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenMujeresTBECEF)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenHombresTBECEF)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-cobertura-institucion":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenTotalTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenMujeresTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenHombresTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Escolarizado":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenEscolarizadoTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "No escolarizado":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenNoEscolarizadoTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mixto":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenMixtoTBECI)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "tasa-bruta-escolarizacion-poblacion-primeros-cuatro-deciles":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenTotalTBEPPD)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenMujeresTBEPPD)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenHombresTBEPPD)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosTBEPPD)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaTBEPPD)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "porcentaje-eficiencia-terminal-sistema-educativo-nacional":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenTotalPETSEN)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenMujeresPETSEN)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenHombresPETSEN)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosPETSEN)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "porcentaje-abandono-escolar":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenTotalPAE)){
                                                ItemView(indicador: key)
                                            }
                                        case "Mujeres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenMujeresPAE)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hombres":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenHombresPAE)){
                                                ItemView(indicador: key)
                                            }
                                        case "Con discapacidad":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenDiscapacitadosPAE)){
                                                ItemView(indicador: key)
                                            }
                                        case "Hablantes de lengua Indígena":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenHablantesLenguaIndigenaPAE)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "gasto-federal-educacion-porcentaje-pib-ies":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenTotalGFEPPibIes)){
                                                ItemView(indicador: key)
                                            }
                                        default:
                                            fatalError("No se selecciono alguna opción listada")
                                        }
                                        
                                    case "gasto-federal-educacion-porcentaje-pib-entidad":
                                        switch key{
                                        case "Total":
                                            NavigationLink(destination: DetalleItem(titulo: key, texto: value, ImagenGrafica: self.mouloViewModel.imagenTotalGFEPPibEEntidad)){
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
