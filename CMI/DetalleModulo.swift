import SwiftUI

struct DetalleModulo: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var modulo: String
    @State var titulo: String
    @State var listaIndicadores : [Indicadores]
    @State var isPresented = false
    @StateObject var moduloViewModel = ModuloViewModel()
    @StateObject var filtroViewModel = FiltroViewModel()
    @StateObject var auth = AuthUser()
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
                            
                            if modulo == "Módulo I" {
                                Filtro(mod: modulo, token: auth.token).environmentObject(filtroViewModel)
                            }
                            
                            ForEach(listaIndicadores){v in
                                NavigationLink(destination: DetalleIndicador(titulo: "\(v.indicador)", modulo: modulo, items: v.items, path: v.path ,codigoFicha: v.codigo, nombreFicha: v.ficha).environmentObject(moduloViewModel)){
                                    ItemView(indicador: v.indicador)
                                }.padding(.bottom)
                            }
                        }
                    }.padding(.bottom)
                    .edgesIgnoringSafeArea(.all)
                    .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
        }.navigationBarHidden(true)
            
        
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

struct DetalleModulo_Previews: PreviewProvider {
    static var previews: some View {
        DetalleModulo(modulo: "Modulo II", titulo: "Modulo II", listaIndicadores: listaModulo_II)
    }
}
