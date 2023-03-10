import SwiftUI

struct DetalleItemOrdU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
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
                            case "Subsidio por estudiante":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Subsidio federal por estudiante")
                                        .font(.headline.bold())
                                    Text("$" + formatResultPIB(basedOn: String(self.subsidioFederalPorAlumno)))
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Subsidio estatal por estudiante")
                                        .font(.headline.bold())
                                    Text("$ \(formatResultPIB(basedOn: String(self.subsidioEstatalPorAlumno)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Subsidio p??blico por estudiante")
                                        .font(.headline.bold())
                                    Text("$ \(formatResultPIB(basedOn: String(self.subsidioPublicoPorAlumno)))")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasOrdinarioU006[4].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasOrdinarioU006[4])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                            case "Montos asignados":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto federal asignado")
                                        .font(.headline.bold())
                                    Text("$ \(formatResultPIB(basedOn: String(self.montoFederal)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto estatal asignado")
                                        .font(.headline.bold())
                                    Text("$ \(formatResultPIB(basedOn: String(self.montoEstatal)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto p??blico asignado")
                                        .font(.headline.bold())
                                    Text("$ \(formatResultPIB(basedOn: String(self.montoPublico)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Porcentaje federal")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.porcentajeFederal)) %")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Porcentaje Estatal")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.porcentajeEstatal)) %")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasOrdinarioU006[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasOrdinarioU006[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasOrdinarioU006[1].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasOrdinarioU006[1])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasOrdinarioU006[2].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasOrdinarioU006[2])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                                
                            case "Matr??cula":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Superior universitaria")
                                        .font(.headline.bold())
                                    Text("\(self.matriculaSuperior != 0 ? formatResult(basedOn: String(self.matriculaSuperior)) : "")")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matr??cula media superior")
                                        .font(.headline.bold())
                                    Text("\(self.matriculaMediaSuperior != 0 ? formatResult(basedOn: String(self.matriculaMediaSuperior)) : "")")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matr??cula total")
                                        .font(.headline.bold())
                                    Text("\(self.matriculaTotal != 0 ? formatResult(basedOn: String(self.matriculaTotal)) : "")")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matr??cula total ponderada")
                                        .font(.headline.bold())
                                    Text("\(self.matriculaTotalPonderada != 0 ? formatResult(basedOn: String(self.matriculaTotalPonderada)) : "")")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasOrdinarioU006[3].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasOrdinarioU006[3])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                            case "Instrumento":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Instrumento")
                                        .font(.headline.bold())
                                    Text("\(self.instrumento.isEmpty ? "" : self.instrumento)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estatus")
                                        .font(.headline.bold())
                                    Text("\(self.estatusConvenio.isEmpty ? "" : self.estatusConvenio)")
                                        .font(.body)
                                }
                                
                            default:
                                EmptyView()
                            }
                        }.padding()
                            .foregroundColor(Color("gris_2"))
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

