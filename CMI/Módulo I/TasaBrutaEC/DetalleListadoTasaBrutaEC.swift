import SwiftUI

struct DetalleListadoTasaBrutaEC: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    var contribucion: Double
    var contribucionHombres: Double
    var contribucionMujeres: Double
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
                            NavigationLink(destination: DetalleItemTasaBrutaEC(titulo: key, contribucion: contribucion, contribucionHombres: contribucionHombres, contribucionMujeres: contribucionMujeres , fuentes: fuentes)){
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
