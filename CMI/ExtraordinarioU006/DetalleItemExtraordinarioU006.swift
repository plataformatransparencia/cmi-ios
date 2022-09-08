import SwiftUI

struct DetalleItemExtraordinarioU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    // RecEx
    @State var montoFederalRecExt : Double
    @State var instrumentoRecExt: String
    @State var fechaExt: String
    @State var estatusRecRxt: String
    // Regreso a clases
    @State var montoRegresoClases: Double
    @State var instrumentoRegresoClases: String
    @State var estatusRegresoClases: String
    @State var fechaFirmaConvenioRegresoClases: String
    //Inclusion a estancias
    @State var montoInclusionEstancias: Double
    @State var instrumentoInclusionEstancias: String
    @State var estatusInclusionEstancias: String
    @State var fechaFirmaConvenioInclusionEstancias: String
    // Incremento Salarial
    @State var instrumentoIncrementoSalarial: String
    @State var estatusIncrementoSalarial: String
    @State var informacionIncrementoSalarial: String
    @State var montoFederalIncrementoSalarial: Double
    @State var clcIncrementoSalarial: Double
    @State var montoEstatalIncSalU006: Double
    @State var montoPublicoIncSalU006: Double
    // Deficit u006
    @State var deficit: Double
    @State var instrumentoDeficit: String
    @State var estatusDeficit: String
    @State var fechaFirmaConvenioDeficitU006: String
    @State var montoEstatalDeficitU006: Double
    @State var montoPublicoDeficitU006: Double
    @State var graficasExtraordinarioU006 : [String]
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

                            case "Recurso extraordinario":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto")
                                        .font(.headline.bold())
                                    self.montoFederalRecExt != 0.0 ? Text("\(formatResultPIB(basedOn: String(self.montoFederalRecExt)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Instrumento")
                                        .font(.headline.bold())
                                    Text("\(self.instrumentoRecExt)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Fecha")
                                        .font(.headline.bold())
                                    Text("\(self.fechaExt)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estatus")
                                        .font(.headline.bold())
                                    Text("\(self.estatusRecRxt)")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasExtraordinarioU006[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasExtraordinarioU006[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                            case "Regreso a clases":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto")
                                        .font(.headline.bold())
                                    self.montoRegresoClases != 0.0 ? Text("\(formatResultPIB(basedOn: String(self.montoRegresoClases)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Instrumento")
                                        .font(.headline.bold())
                                    Text("\(self.instrumentoRegresoClases)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Fecha")
                                        .font(.headline.bold())
                                    Text("\(self.fechaFirmaConvenioRegresoClases)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estatus")
                                        .font(.headline.bold())
                                    Text("\(self.estatusRegresoClases)")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasExtraordinarioU006[1].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasExtraordinarioU006[1])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                            case "Inclusión Estancias U006":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto")
                                        .font(.headline.bold())
                                    self.montoInclusionEstancias != 0.0 ? Text("\(formatResultPIB(basedOn: String(self.montoInclusionEstancias)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Instrumento")
                                        .font(.headline.bold())
                                    Text("\(self.instrumentoInclusionEstancias)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Fecha")
                                        .font(.headline.bold())
                                    Text("\(self.fechaFirmaConvenioInclusionEstancias)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estatus")
                                        .font(.headline.bold())
                                    Text("\(self.estatusInclusionEstancias)")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasExtraordinarioU006[2].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasExtraordinarioU006[2])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Incremento Salarial U006":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Instrumento")
                                        .font(.headline.bold())
                                    Text("\(self.instrumentoIncrementoSalarial)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estatus")
                                        .font(.headline.bold())
                                    Text("\(self.estatusIncrementoSalarial)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Información")
                                        .font(.headline.bold())
                                    Text("\(self.informacionIncrementoSalarial)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto Federal")
                                        .font(.headline.bold())
                                    self.montoFederalIncrementoSalarial != 0.0 ? Text("\(formatResultPIB(basedOn: String(self.montoFederalIncrementoSalarial)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CLC")
                                        .font(.headline.bold())
                                    clcIncrementoSalarial != 0.0 ? Text("\(self.clcIncrementoSalarial)") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto Estatal")
                                        .font(.headline.bold())
                                    self.montoEstatalIncSalU006 != 0.0 ? Text("\(formatResultPIB(basedOn: String(self.montoEstatalIncSalU006)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto Público")
                                        .font(.headline.bold())
                                    self.montoPublicoIncSalU006 != 0.0 ? Text("\(formatResultPIB(basedOn: String(self.montoPublicoIncSalU006)))") : Text("")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasExtraordinarioU006[2].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasExtraordinarioU006[2])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Déficit U006":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto")
                                        .font(.headline.bold())
                                    self.deficit != 0.0 ? Text("\(formatResultPIB(basedOn: String(self.deficit)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Instrumento")
                                        .font(.headline.bold())
                                    Text("\(self.instrumentoDeficit)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estatus")
                                        .font(.headline.bold())
                                    Text("\(self.estatusDeficit)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Fecha de Firma de Convenio")
                                        .font(.headline.bold())
                                    Text("\(self.fechaFirmaConvenioDeficitU006)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto Estatal")
                                        .font(.headline.bold())
                                    self.montoEstatalDeficitU006 != 0.0 ? Text("\(formatResultPIB(basedOn: String(self.montoEstatalDeficitU006)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto Público")
                                        .font(.headline.bold())
                                    self.montoPublicoDeficitU006 != 0.0 ? Text("\(formatResultPIB(basedOn: String(self.montoPublicoDeficitU006)))") : Text("")
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

