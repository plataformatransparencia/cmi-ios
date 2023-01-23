import SwiftUI

struct DetalleMesFederalU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var item: String
    
    // Calendarizado
    @State var aportacion: Double?
    @State var comprobaciones: [Comprobaciones]?
    // Reportado
    @State var reportes: [Reportes]?
    
    // Según plataforma
    @State var aportacionSP: Double?
    @State var observacionSP: String?
    @State var adeudoMensualSP: Double?
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
                                    Text("$" + formatResultPIB(basedOn: String(self.aportacion ?? 0.0)))
                                        .font(.body)
                                }
                                ForEach(comprobaciones!, id:\.numeroCLC){ val in
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Aportación comprobada CLC")
                                            .font(.headline.bold())
                                        val.comprobadaCLC != 0.0 ? Text("$" + formatResultPIB(basedOn: String(val.comprobadaCLC))) : Text("")
                                            .font(.body)
                                    }
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Número de CLC")
                                            .font(.headline.bold())
                                        Text("\(val.numeroCLC == "N/A" ? "" : val.numeroCLC)")
                                            .font(.body)
                                    }
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Fecha de pago CLC")
                                            .font(.headline.bold())
                                        Text("\(val.fechaPago == "N/A" ? "" : val.fechaPago)")
                                            .font(.body)
                                    }
                                }
                                
                            case "Reportado por la universidad":
                                ForEach(reportes!, id:\.aportacion){ val in
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Aportación reportada por la universidad")
                                            .font(.headline.bold())
                                        val.aportacion != 0.0 ? Text("$" + formatResultPIB(basedOn: String(val.aportacion))) : Text("")
                                            .font(.body)
                                    }
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Número de CLC")
                                            .font(.headline.bold())
                                        Text("\(val.numeroTransferencia == "N/A" ? "" : val.numeroTransferencia)")
                                            .font(.body)
                                    }
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Fecha de pago CLC")
                                            .font(.headline.bold())
                                        Text("\(val.fechaPago == "N/A" ? "" : val.fechaPago)")
                                            .font(.body)
                                    }
                                }
                            case "Información de Dirección de Subsidio a Universidades":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Aportación según plataforma")
                                        .font(.headline.bold())
                                    aportacionSP != 0.0 ? Text("$" + formatResultPIB(basedOn: String(aportacionSP ?? 0.0))) : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Observación según portal de transparencia")
                                        .font(.headline.bold())
                                    Text("\(observacionSP ?? "")")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Adeudos mensuales")
                                        .font(.headline.bold())
                                    adeudoMensualSP != 0.0 ? Text("$" + formatResultPIB(basedOn: String(adeudoMensualSP ?? 0.0))) : Text("")
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
