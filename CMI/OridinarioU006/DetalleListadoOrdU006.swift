import SwiftUI

struct DetalleListadoOrdU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var instrumento: String
    @State var estatusConvenio: String
    @State var montoEstatal: Double
    @State var montoFederal: Double
    @State var montoPublico: Double
    @State var matriculaSuperior: Int
    @State var matriculaMediaSuperior: Int
    @State var porcentajeFederal: Double
    @State var porcentajeEstatal: Double
    @State var matriculaTotal: Int
    @State var matriculaTotalPonderada: Int
    @State var subsidioEstatalPorAlumno: Double
    @State var subsidioFederalPorAlumno: Double
    @State var subsidioPublicoPorAlumno: Double
    @State var graficasOrdinarioU006 : [String]
    
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
                            NavigationLink(destination: DetalleItemOrdU006(titulo: key, instrumento: instrumento, estatusConvenio: estatusConvenio, montoEstatal: montoEstatal, montoFederal: montoFederal, montoPublico: montoPublico, matriculaSuperior: matriculaSuperior, matriculaMediaSuperior: matriculaMediaSuperior, porcentajeFederal: porcentajeFederal, porcentajeEstatal: porcentajeEstatal, matriculaTotal: matriculaTotal, matriculaTotalPonderada: matriculaTotalPonderada, subsidioEstatalPorAlumno: subsidioEstatalPorAlumno, subsidioFederalPorAlumno: subsidioFederalPorAlumno, subsidioPublicoPorAlumno: subsidioPublicoPorAlumno, graficasOrdinarioU006: graficasOrdinarioU006)){
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
