import SwiftUI

struct DetalleListadoTasaBrutaECIES: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var censoEstatalHombres: Int
    @State var censoEstatalMujeres: Int
    @State var totalTSUPA: Int
    @State var totalLicenciatura: Int
    @State var totalHombres: Int
    @State var totalMujeres: Int
    @State var totalDiscapacitados: Int
    @State var totalHablanteLenguaIndigena: Int
    @State var totalEscolarizado: Int
    @State var totalNoEscolarizado: Int
    @State var totalMixto: Int
    @State var matriculaTotal: Int
    @State var contribucionDGESUI: Double
    @State var contribucionDGESUIHombres: Double
    @State var contribucionDGESUIMujeres: Double
    @State var porcentajeConDiscapacidad: Double
    @State var porcentajeHablanteLenguaIndigena: Double
    @State var porcentajeEscolarizado: Double
    @State var porcentajeNoEscolarizado: Double
    @State var porcentajeMixto: Double
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
                            NavigationLink(destination: DetalleItemTasaBrutaECIES(titulo: key, censoEstatalHombres: censoEstatalHombres, censoEstatalMujeres: censoEstatalMujeres, totalTSUPA: totalTSUPA, totalLicenciatura: totalLicenciatura, totalHombres: totalHombres, totalMujeres: totalMujeres, totalDiscapacitados: totalDiscapacitados, totalHablanteLenguaIndigena: totalHablanteLenguaIndigena, totalEscolarizado: totalEscolarizado, totalNoEscolarizado: totalNoEscolarizado, totalMixto: totalMixto, matriculaTotal: matriculaTotal, contribucionDGESUI: contribucionDGESUI, contribucionDGESUIHombres: contribucionDGESUIHombres, contribucionDGESUIMujeres: contribucionDGESUIMujeres, porcentajeConDiscapacidad: porcentajeConDiscapacidad, porcentajeHablanteLenguaIndigena: porcentajeHablanteLenguaIndigena, porcentajeEscolarizado: porcentajeEscolarizado, porcentajeNoEscolarizado: porcentajeNoEscolarizado, porcentajeMixto: porcentajeMixto)){
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
