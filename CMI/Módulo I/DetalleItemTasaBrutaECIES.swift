import SwiftUI

struct DetalleItemTasaBrutaECIES: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
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
    @State var fuentes: [FuentesModII]
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
                            case "Tasa Bruta Escolarización DGESUI":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Tecnico Superior Universitario (TSU)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalTSUPA)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalLicenciatura)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Total (incluye TSU, Lic de escolarizado y no escolarizado)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(matriculaTotal)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Contribución de las Instituciones de los Subsistemas de la DGESUI al Programa Sectorial de Educación 2020-2024 (Total)")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: contribucionDGESUI)) %")
                                        .font(.body)
                                }
                                
                            case "Tasa Bruta Escolarización Mujeres":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula de Mujeres (incluye TSU, Lic de escolarizado y no escolarizado)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalMujeres)))")
                                        .font(.body)
                                    
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Contribución de las Instituciones de los Subsistemas de la DGESUI al Programa Sectorial de Educación 2020-2024 (Mujeres)")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: contribucionDGESUIMujeres)) %")
                                        .font(.body)
                                }
                                
                            case "Tasa Bruta Escolarización Hombres":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula de Hombres (incluye TSU, Lic de escolarizado y no escolarizado)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalHombres)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Contribución de las Instituciones de los Subsistemas de la DGESUI al Programa Sectorial de Educación 2020-2024 (Hombres)")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: contribucionDGESUIHombres)) %")
                                        .font(.body)
                                    
                                }
                                
                            case "Tasa Bruta Escolarización Con Discapacidad":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estudiantes con Discapacidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalDiscapacitados)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Tasa bruta de Escolarización de la Población Personas con Discapacidad")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: porcentajeConDiscapacidad)) %")
                                        .font(.body)
                                }
                                
                            case "Tasa Bruta Escolarización HLI":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estudiantes Hablantes de Lengua Indígena")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalHablanteLenguaIndigena)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Tasa Bruta de Escolarización de la Población Personas Hablantes de Lengua Indígena")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: porcentajeHablanteLenguaIndigena)) %")
                                        .font(.body)
                                }
                                
                            case "Porcentaje Modalidad":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estudiantes Escolarizado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalEscolarizado)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Porcentaje de Estudiantes en la Modalidad de Escolarizado")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: porcentajeEscolarizado)) %")
                                        .font(.body)
                                }
                                
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estudiantes No Escolarizado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalNoEscolarizado)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Porcentaje de Estudiantes en la Modalidad No Escolarizado")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: porcentajeNoEscolarizado)) %")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estudiantes Modalidad Mixta")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalMixto)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Porcentaje de Estudiantes Modalidad Mixta")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: porcentajeMixto)) %")
                                        .font(.body)
                                }
                                
                            default:
                                EmptyView()
                            }
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Fuente")
                                        .font(.headline.bold())
                                    Spacer()
                                }.padding(.bottom)
                                ForEach(fuentes, id:\.fuente) { f in
                                    LabelAlignment(text: f.fuente, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                            .padding(.bottom)
                                }
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
