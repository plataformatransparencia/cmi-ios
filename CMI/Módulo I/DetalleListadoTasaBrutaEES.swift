import SwiftUI

struct DetalleListadoTasaBrutaEES: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var matriculaTotal: Int
    @State var censoTotal: Int
    @State var tasaEscolarizacion: Double
    
    @State var matriculaMuj: Int
    @State var censoMuj: Int
    @State var tasaMujeres: Double
    
    @State var matriculaHom: Int
    @State var censoHom: Int
    @State var tasaHombres: Double
    @State var fuentes: [FuentesModII]
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
                        
                        ForEach(items.sorted(by: <), id:\.key){key, value in
                            NavigationLink(destination: DetalleItemTasaBrutaEES(titulo: key, matriculaTotal: matriculaTotal, censoTotal: censoTotal, tasaEscolarizacion: tasaEscolarizacion, matriculaMuj: matriculaMuj, censoMuj: censoMuj, tasaMujeres: tasaMujeres, matriculaHom: matriculaHom, censoHom: censoHom, tasaHombres: tasaHombres, fuentes: fuentes)){
                                ItemView(indicador: key)
                                
                            }
                        }
                        
                    }.padding(.bottom)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }
    }
}
