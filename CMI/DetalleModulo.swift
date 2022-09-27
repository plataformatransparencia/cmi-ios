import SwiftUI

struct DetalleModulo: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var modulo: String
    @State var titulo: String
    @State var listaIndicadores : [Indicadores]
    @State var isPresented = false
    var token: String
    @StateObject var moduloViewModel = ModuloViewModel()
    @StateObject var filtroViewModel = FiltroViewModel()
    
    var body: some View {
        VStack{
            NavigationView{
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
                                Filtro(mod: modulo, token: self.token).environmentObject(filtroViewModel)
                                ForEach(listaIndicadores){v in
                                    NavigationLink(destination: DetalleIndicador(titulo: "\(v.indicador)", modulo: modulo, items: v.items, path: v.path ,codigoFicha: v.codigo, nombreFicha: v.ficha,token: token, periodo: filtroViewModel.seleccionado)){
                                        ItemView(indicador: v.indicador + "(\(filtroViewModel.seleccionado))")
                                    }.padding(.bottom)
                                }
                            case "Módulo II":
                                VStack(alignment: .leading, spacing: 15){
                                    HStack{
                                        Text("Indicadores del Programa Presupuestario G001 Normar los Servicios Educativos")
                                            .font(.body.bold())
                                            .foregroundColor(Color("gris_2"))
                                        Spacer()
                                    }
                                    ForEach(listaIndicadores){indicador in
                                        if indicador.grupo.contains("G001"){
                                            NavigationLink(destination: DetalleIndicador(titulo: "\(indicador.indicador)", modulo: modulo, items: indicador.items, path: indicador.path ,codigoFicha: indicador.codigo, nombreFicha: indicador.ficha,token: token, periodo: filtroViewModel.seleccionado)){
                                                ItemView(indicador: indicador.indicador)
                                            }
                                            
                                        }
                                    }
                                }.padding([.top,.leading])
                                VStack(alignment: .leading, spacing: 15){
                                    HStack{
                                        Text("Indicadores del Programa Presupuestario S247 Programa para el Desarrollo Profesional Docente")
                                            .font(.body.bold())
                                            .foregroundColor(Color("gris_2"))
                                        Spacer()
                                    }
                                    ForEach(listaIndicadores){indicador in
                                        if indicador.grupo.contains("S247"){
                                            NavigationLink(destination: DetalleIndicador(titulo: "\(indicador.indicador)", modulo: modulo, items: indicador.items, path: indicador.path ,codigoFicha: indicador.codigo, nombreFicha: indicador.ficha,token: token, periodo: filtroViewModel.seleccionado)){
                                                ItemView(indicador: indicador.indicador)
                                            }
                                            
                                        }
                                    }
                                }.padding([.top,.leading])
                                VStack(alignment: .leading, spacing: 15){
                                    HStack{
                                        Text("Indicadores del Programa Presupuestario U006 Subsidios para Organismos Descentralizados Estatales")
                                            .font(.body.bold())
                                            .foregroundColor(Color("gris_2"))
                                        Spacer()
                                    }
                                    ForEach(listaIndicadores){indicador in
                                        if indicador.grupo.contains("U006"){
                                            NavigationLink(destination: DetalleIndicador(titulo: "\(indicador.indicador)", modulo: modulo, items: indicador.items, path: indicador.path ,codigoFicha: indicador.codigo, nombreFicha: indicador.ficha,token: token, periodo: filtroViewModel.seleccionado)){
                                                ItemView(indicador: indicador.indicador)
                                            }
                                           
                                        }
                                    }
                                }.padding([.top,.leading])
                                VStack(alignment: .leading, spacing: 15){
                                    HStack{
                                        Text("Indicadores del Programa Presupuestario U080 Apoyos a Centros y Organizaciones de Educación")
                                            .font(.body.bold())
                                            .foregroundColor(Color("gris_2"))
                                        Spacer()
                                    }
                                    ForEach(listaIndicadores){indicador in
                                        if indicador.grupo.contains("U080"){
                                            NavigationLink(destination: DetalleIndicador(titulo: "\(indicador.indicador)", modulo: modulo, items: indicador.items, path: indicador.path ,codigoFicha: indicador.codigo, nombreFicha: indicador.ficha,token: token, periodo: filtroViewModel.seleccionado)){
                                                ItemView(indicador: indicador.indicador)
                                            }
                                        }
                                    }
                                }.padding([.top,.leading])
                            case "Módulo III":
                                ForEach(listaIndicadores){v in
                                    NavigationLink(destination: DetalleIndicador(titulo: "\(v.indicador)", modulo: modulo, items: v.items, path: v.path ,codigoFicha: v.codigo, nombreFicha: v.ficha,token: token, periodo: filtroViewModel.seleccionado)){
                                        ItemView(indicador: v.indicador)
                                        
                                    }
                                    .padding(.bottom)
                                }
                            default:
                                EmptyView()
                            }
                        }
                    }.padding(.bottom, 15)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
        }.onAppear{
            self.filtroViewModel.loadFiltro(token: self.token)
        }
        .navigationBarHidden(true)
        
        
    }
    
}



struct ItemView: View {
    var indicador: String
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(indicador)
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.leading)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.body.bold())
            }
            .foregroundColor(Color("gris_2"))
            .edgesIgnoringSafeArea(.all)
        }.padding([.horizontal, .top])
        
    }
}
