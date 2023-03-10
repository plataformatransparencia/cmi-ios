import SwiftUI

struct DetalleMesEstatalU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var item: String
    
    // Calendarizado
    @State var calendarizada: Double?
    @State var reportes: [ReportesEstatal]?
    // Según plataforma
    @State var totalReportado: Double?
    @State var observacion: String?
    @State var adeudoMensual: Double?
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
                            switch item{
                            case "Calendarizado":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Aportación calendarizada")
                                        .font(.headline.bold())
                                    calendarizada != 0.0 ? Text("$" + formatResultPIB(basedOn: String(calendarizada ?? 0.0))) : Text("")
                                        .font(.body)
                                }
                                ForEach(reportes!, id:\.numeroTransferencia){ val in
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Aportación reportada en el sistema")
                                            .font(.headline.bold())
                                        val.monto != 0.0 ? Text("$" + formatResultPIB(basedOn: String(val.monto))) : Text("")
                                            .font(.body)
                                    }
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Número de transferencia")
                                            .font(.headline.bold())
                                        Text("\(val.numeroTransferencia == "N/A" ? "" :  val.numeroTransferencia)")
                                            .font(.body)
                                    }
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Fecha de pago")
                                            .font(.headline.bold())
                                        Text("\(val.fechaPago == "N/A" ? "" : val.fechaPago)")
                                            .font(.body)
                                    }
                                }

                            case "Información de Dirección de Subsidio a Universidades":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Aportación según plataforma")
                                        .font(.headline.bold())
                                    totalReportado != 0.0 ? Text("$" + formatResultPIB(basedOn: String(totalReportado ?? 0.0))) : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Observación según portal de transparencia")
                                        .font(.headline.bold())
                                    Text("\(observacion ?? "")")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Adeudos mensuales")
                                        .font(.headline.bold())
                                    adeudoMensual != 0.0 ? Text("$" + formatResultPIB(basedOn: String(adeudoMensual ?? 0.0))) : Text("")
                                        .font(.body)
                                }
                            default:
                                EmptyView()
                            }
                        }.padding()
                            .foregroundColor(Color("gris_2"))
                    }.padding(.bottom)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }.navigationBarHidden(true)
    }
}
