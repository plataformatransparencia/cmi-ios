import SwiftUI

struct DetalleListadoFederalU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var federalU006 : [FederalU006]
    @State var listaCalendarizado : [ListaCalendarizado]
    @State var listaReportado: [ListaReportado]
    @State var listaPlataforma: [ListaPlataforma]
    @State var totalCalendarizado: Double
    @State var totalComprobado: Double
    @State var totalReportado: Double
    @State var graficasFederalU006 : [String]
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
                            NavigationLink(destination: DetalleItemFederalU006(titulo: key, federalU006: federalU006, listaCalendarizado: listaCalendarizado, listaReportado: listaReportado, listaPlataforma: listaPlataforma, totalCalendarizado:totalCalendarizado, totalComprobado: totalComprobado, totalReportado:totalReportado, graficasFederalU006: graficasFederalU006)){
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
