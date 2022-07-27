import SwiftUI

struct DetalleModulo: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var modulo: String
    @State var titulo: String
    @State var listaIndicadores : [String]
    @State var isPresented = false
    var body: some View {
        VStack{
            NavigationView{
                ZStack{
                    ScrollView(showsIndicators: true){
                        VStack(alignment: .leading){
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
                               Filtro()
                            }
                            
                            ForEach(listaIndicadores, id:\.self){value in
                                NavigationLink(destination: Text("Vista de indicador \(value)")){
                                    ItemView(indicador: value)
                                }
                            }
                        }
                    }.edgesIgnoringSafeArea(.all)
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
        }.padding()
        
    }
}

struct DetalleModulo_Previews: PreviewProvider {
    static var previews: some View {
        DetalleModulo(modulo: "Modulo II", titulo: "Modulo II", listaIndicadores: listaModulo_II)
    }
}
