import SwiftUI

struct DetalleItemEstatalU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var aportaciones : [AportacionesEstatal]
    @State var graficasEstatalU006 : [String]
    
    @State var totalCalendarizado: Double
    @State var totalReportado: Double
    @State var totalAdeudosMensuales: Double
    @State var fuentes: String
    
    var body: some View {
        VStack{
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
                        VStack(alignment: .leading, spacing: 15){
                            switch titulo{
                            case "Calendarizado":
                                ForEach(aportaciones, id:\.mes){ value in
                                    NavigationLink(destination: DetalleMesEstatalU006(titulo: value.mes, item: titulo, calendarizada: value.calendarizada, reportes: value.reportes,fuentes:fuentes)){
                                        ItemView(indicador: value.mes)
                                    }
                                }
                                VStack(alignment: .leading,spacing: 15){
                                    Text("Subtotal")
                                        .font(.headline.bold())
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Aportación calendarizada")
                                            .font(.headline.bold())
                                        Text("$" + formatResultPIB(basedOn: String(self.totalCalendarizado)))
                                            .font(.body)
                                    }
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Aportación reportada en el sistema")
                                            .font(.headline.bold())
                                        Text("$" + formatResultPIB(basedOn: String(self.totalReportado)))
                                            .font(.body)
                                    }
                                }.padding()
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasEstatalU006[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasEstatalU006[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                            case "Información de Dirección de Subsidio a Universidades":
                                ForEach(aportaciones, id:\.mes){ value in
                                    NavigationLink(destination: DetalleMesEstatalU006(titulo: value.mes, item: titulo, totalReportado: value.totalReportado, observacion: value.observacion, adeudoMensual: value.adeudoMensual,fuentes:fuentes)){
                                        ItemView(indicador: value.mes)
                                    }
                                }
                                
                                VStack(alignment: .leading,spacing: 15){
                                    Text("Subtotal")
                                        .font(.headline.bold())
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Aportación según plataforma")
                                            .font(.headline.bold())
                                        Text("$" + formatResultPIB(basedOn: String(self.totalReportado)))
                                            .font(.body)
                                    }
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Adeudos mensuales")
                                            .font(.headline.bold())
                                        Text("$" + formatResultPIB(basedOn: String(self.totalAdeudosMensuales)))
                                            .font(.body)
                                    }
                                }.padding()
                                
                            default:
                                EmptyView()
                            }
                        }.foregroundColor(Color("gris_2"))
                        VStack(alignment: .leading){
                            HStack{
                                Text("Fuente")
                                    .font(.headline.bold())
                                Spacer()
                            }.padding(.bottom)
                            
                            LabelAlignment(text: fuentes, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                            .padding(.bottom)
                            
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
