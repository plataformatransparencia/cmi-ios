import SwiftUI

struct DetalleItemIndicadoresSubsistema: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    
    @State var tsuPaNe: Int
    @State var licenciaturaNe: Int
    @State var totalTsuLicNe: Int
    @State var especialidadNe: Int
    @State var maestriaNe: Int
    @State var doctoradoNe: Int
    @State var totalPosgradoNe: Int
    @State var totalTsuLicPosNe: Int
    @State var hombresEsNe: Int
    @State var mujeresEsNe: Int
    @State var totalEsNe: Int
    
    @State var totalHombresDiscapacidadEsNe: Int
    @State var totalMujeresDiscapacidadEsNe: Int
    
    @State var totalHombresHliEsNe: Int
    @State var totalMujeresHliEsNe: Int
    
    @State var hombresEgresados: Int
    @State var mujeresEgresados: Int
    @State var totalDiscapacidadEgresados: Int
    @State var totalHliEgresados: Int
    
    @State var hombresTitulados: Int
    @State var mujeresTitulados: Int
    @State var totalDiscapacidadTitulados: Int
    @State var totalHliTitulados: Int
    
    @State var escolarizadaMm: Int
    @State var noEscolarizadaMm: Int
    @State var mixtaMm: Int
    
    @State var tsuPaMp: Int
    @State var licenciaturaMp: Int
    @State var especialidadMp: Int
    @State var maestriaMp: Int
    @State var doctoradoMp: Int
    @State var totalHombresMp: Int
    @State var totalMujeresMp: Int
    
    @State var tsuPaTp: Int
    @State var licenciaturaTp: Int
    @State var especialidadTp: Int
    @State var maestriaTp: Int
    @State var doctoradoTp: Int
    
    @State var educacionMaCmpe: Int
    @State var artesHumanidadesMaCmpe: Int
    @State var cienciasSocialesDerechoMaCmpe: Int
    @State var administracionNegociosMaCmpe: Int
    @State var cienciasNaturalesMatematicasEstadisticaMaCmpe: Int
    @State var ticMaCmpe: Int
    @State var ingenieriaManufacturaConstruccionMaCmpe: Int
    @State var agronomiaVeterinariaMaCmpe: Int
    @State var cienciasSaludMaCmpe: Int
    @State var serviciosMaCmpe: Int
    @State var totalMatriculaEs: Int
    
    @State var graficasIndicadoresSubsistema : [String]
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

                            case "Matrícula Nivel Educativo":
                                
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TSU/PA")
                                        .font(.headline.bold())
                                    tsuPaNe != 0 ? Text("\(formatResult(basedOn: String(self.tsuPaNe)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Lic")
                                        .font(.headline.bold())
                                    licenciaturaNe != 0 ? Text("\(formatResult(basedOn: String(self.licenciaturaNe)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total TSU/LIC")
                                        .font(.headline.bold())
                                    totalTsuLicNe != 0 ? Text("\(formatResult(basedOn: String(self.totalTsuLicNe)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    especialidadNe != 0 ? Text("\(formatResult(basedOn: String(self.especialidadNe)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    maestriaNe != 0 ? Text("\(formatResult(basedOn: String(self.maestriaNe)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    doctoradoNe != 0 ? Text("\(formatResult(basedOn: String(self.doctoradoNe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total posgrado")
                                        .font(.headline.bold())
                                    totalPosgradoNe != 0 ? Text("\(formatResult(basedOn: String(self.totalPosgradoNe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total (TSU,Lic,Posg)")
                                        .font(.headline.bold())
                                    totalTsuLicPosNe != 0 ? Text("\(formatResult(basedOn: String(self.totalTsuLicPosNe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres ES")
                                        .font(.headline.bold())
                                    hombresEsNe != 0 ? Text("\(formatResult(basedOn: String(self.hombresEsNe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres ES")
                                        .font(.headline.bold())
                                    mujeresEsNe != 0 ? Text("\(formatResult(basedOn: String(self.mujeresEsNe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("Total ES")
                                        .font(.headline.bold())
                                    totalEsNe != 0 ? Text("\(formatResult(basedOn: String(self.totalEsNe)))") : Text("")
                                        .font(.body)
                                }
                               
                                
                                
                            case "Total Discapacidad ES":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    totalHombresDiscapacidadEsNe != 0 ? Text("\(formatResult(basedOn: String(self.totalHombresDiscapacidadEsNe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    totalMujeresDiscapacidadEsNe != 0 ? Text("\(formatResult(basedOn: String(self.totalMujeresDiscapacidadEsNe)))") : Text("")
                                        .font(.body)
                                }
                               
                            case "Total HLI ES":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    totalHombresHliEsNe != 0 ? Text("\(formatResult(basedOn: String(self.totalHombresHliEsNe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    totalMujeresHliEsNe != 0 ? Text("\(formatResult(basedOn: String(self.totalMujeresHliEsNe)))") : Text("")
                                        .font(.body)
                                }
                                
                            case "Egresados ES":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    hombresEgresados != 0 ? Text("\(formatResult(basedOn: String(self.hombresEgresados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    mujeresEgresados != 0 ? Text("\(formatResult(basedOn: String(self.mujeresEgresados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Discapacidad")
                                        .font(.headline.bold())
                                    totalDiscapacidadEgresados != 0 ? Text("\(formatResult(basedOn: String(self.totalDiscapacidadEgresados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total HLI")
                                        .font(.headline.bold())
                                    totalHliEgresados != 0 ? Text("\(formatResult(basedOn: String(self.totalHliEgresados)))") : Text("")
                                        .font(.body)
                                }
                            case "Titulados ES":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    hombresTitulados != 0 ? Text("\(formatResult(basedOn: String(self.hombresTitulados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    mujeresTitulados != 0 ? Text("\(formatResult(basedOn: String(self.mujeresTitulados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Discapacidad")
                                        .font(.headline.bold())
                                    totalDiscapacidadTitulados != 0 ? Text("\(formatResult(basedOn: String(self.totalDiscapacidadTitulados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total HLI")
                                        .font(.headline.bold())
                                    totalHliTitulados != 0 ? Text("\(formatResult(basedOn: String(self.totalHliTitulados)))") : Text("")
                                        .font(.body)
                                }
                                
                            case "Matrícula por Modalidad":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Escolarizada")
                                        .font(.headline.bold())
                                    escolarizadaMm != 0 ? Text("\(formatResult(basedOn: String(self.escolarizadaMm)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("No escolarizada")
                                        .font(.headline.bold())
                                    noEscolarizadaMm != 0 ? Text("\(formatResult(basedOn: String(self.noEscolarizadaMm)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mixta")
                                        .font(.headline.bold())
                                    mixtaMm != 0 ? Text("\(formatResult(basedOn: String(self.mixtaMm)))") : Text("")
                                        .font(.body)
                                }
                                
                            case "Matrícula por Programa":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TSU/PA")
                                        .font(.headline.bold())
                                    tsuPaMp != 0 ? Text("\(formatResult(basedOn: String(self.tsuPaMp)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    licenciaturaMp != 0 ? Text("\(formatResult(basedOn: String(self.licenciaturaMp)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    especialidadMp != 0 ? Text("\(formatResult(basedOn: String(self.especialidadMp)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    maestriaMp != 0 ? Text("\(formatResult(basedOn: String(self.maestriaMp)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    doctoradoMp != 0 ? Text("\(formatResult(basedOn: String(self.doctoradoMp)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Hombres")
                                        .font(.headline.bold())
                                    totalHombresMp != 0 ? Text("\(formatResult(basedOn: String(self.totalHombresMp)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Mujeres")
                                        .font(.headline.bold())
                                    totalMujeresMp != 0 ? Text("\(formatResult(basedOn: String(self.totalMujeresMp)))") : Text("")
                                        .font(.body)
                                }
                            case "Total de Programas":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TSU/PA")
                                        .font(.headline.bold())
                                    tsuPaTp != 0 ?Text("\(formatResult(basedOn: String(self.tsuPaTp)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    licenciaturaTp != 0 ?Text("\(formatResult(basedOn: String(self.licenciaturaTp)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    especialidadTp != 0 ?Text("\(formatResult(basedOn: String(self.especialidadTp)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    maestriaTp != 0 ?Text("\(formatResult(basedOn: String(self.maestriaTp)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    doctoradoTp != 0 ?Text("\(formatResult(basedOn: String(self.doctoradoTp)))") : Text("")
                                        .font(.body)
                                }
                            case "Matrícula por áreas de la CMPE":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Educación")
                                        .font(.headline.bold())
                                    educacionMaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.educacionMaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AH")
                                        .font(.headline.bold())
                                    artesHumanidadesMaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.artesHumanidadesMaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CSD")
                                        .font(.headline.bold())
                                    cienciasSocialesDerechoMaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.cienciasSocialesDerechoMaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AN")
                                        .font(.headline.bold())
                                    administracionNegociosMaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.administracionNegociosMaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CNME")
                                        .font(.headline.bold())
                                    cienciasNaturalesMatematicasEstadisticaMaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.cienciasNaturalesMatematicasEstadisticaMaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TIC")
                                        .font(.headline.bold())
                                    ticMaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.ticMaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("IMC")
                                        .font(.headline.bold())
                                    ingenieriaManufacturaConstruccionMaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.ingenieriaManufacturaConstruccionMaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AV")
                                        .font(.headline.bold())
                                    agronomiaVeterinariaMaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.agronomiaVeterinariaMaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CS")
                                        .font(.headline.bold())
                                    cienciasSaludMaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.cienciasSaludMaCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("Servicios")
                                        .font(.headline.bold())
                                    serviciosMaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.serviciosMaCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("Total Matrícula ES")
                                        .font(.headline.bold())
                                    totalMatriculaEs != 0 ? Text("\(formatResult(basedOn: String(self.totalMatriculaEs)))") : Text("")
                                        .font(.body)
                                    
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: true){
                                            !(graficasIndicadoresSubsistema[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresSubsistema[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                        }
                                    }.padding(.bottom)
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
