import SwiftUI

struct DetalleListadoIndicadoresIES: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var indicadorIES: IndicadorIES
    @State var sisup: Sisup
    @State var graficasIndicadoresIES : [String]
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
                        ForEach(items.sorted(by: >), id:\.key){key, value in
                            NavigationLink(destination: DetalleItemIndicadoresIES(titulo: key, items: items, indicadorIES: indicadorIES, sisup: sisup, graficasIndicadoresIES: graficasIndicadoresIES)){
                                ItemView(indicador: key)
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
