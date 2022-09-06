import SwiftUI

struct DetalleListadoEstatalU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var aportaciones : [AportacionesEstatal]
    @State var graficasEstatalU006 : [String]
    
    @State var totalCalendarizado: Double
    @State var totalReportado: Double
    @State var totalAdeudosMensuales: Double
    
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
                            NavigationLink(destination: DetalleItemEstatalU006(titulo: key, aportaciones: aportaciones, graficasEstatalU006: graficasEstatalU006, totalCalendarizado: totalCalendarizado, totalReportado: totalReportado, totalAdeudosMensuales: totalAdeudosMensuales)){
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

