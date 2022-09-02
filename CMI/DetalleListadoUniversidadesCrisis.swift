import SwiftUI

struct DetalleListadoUniversidadesCrisis: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var montoPublico: Double
    @State var totalMinistrado: Double
    @State var montoConvenioSEP: Double
    @State var montoMinistradoSEP: Double
    @State var fechaEjecucionSEP: String
    @State var observacionFederal: String
    @State var montoConvenioEstado: Double
    @State var totalMinistradoEstado: Double
    @State var ministraciones : [Ministraciones]
    @State var graficaUniversidadesCrisis : [String]
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
                            NavigationLink(destination: DetalleItemUniversidadesCrisis(titulo: key, montoPublico: montoPublico, totalMinistrado: totalMinistrado, montoConvenioSEP: montoConvenioSEP, montoMinistradoSEP: montoMinistradoSEP, fechaEjecucionSEP: fechaEjecucionSEP, observacionFederal: observacionFederal, montoConvenioEstado: montoConvenioEstado, totalMinistradoEstado: totalMinistradoEstado, ministraciones: ministraciones, graficaUniversidadesCrisis: graficaUniversidadesCrisis)){
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
