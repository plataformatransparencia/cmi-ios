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
                                    Text("\(formatResult(basedOn: String(self.tsuPaNe)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Lic")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.licenciaturaNe)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total TSU/LIC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalTsuLicNe)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.especialidadNe)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.maestriaNe)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.doctoradoNe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total posgrado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalPosgradoNe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total (TSU,Lic,Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalTsuLicPosNe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres ES")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.hombresEsNe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres ES")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.mujeresEsNe)))")
                                        .font(.body)
                                    
                                    Text("Total ES")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalEsNe)))")
                                        .font(.body)
                                }
                               
                                
                                
                            case "Total Discapacidad ES":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalHombresDiscapacidadEsNe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalMujeresDiscapacidadEsNe)))")
                                        .font(.body)
                                }
                               
                            case "Total HLI ES":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalHombresHliEsNe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalMujeresHliEsNe)))")
                                        .font(.body)
                                }
                                
                            case "Egresados ES":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.hombresEgresados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.mujeresEgresados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Discapacidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalDiscapacidadEgresados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total HLI")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalHliEgresados)))")
                                        .font(.body)
                                }
                            case "Titulados ES":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.hombresTitulados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.mujeresTitulados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Discapacidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalDiscapacidadTitulados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total HLI")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalHliTitulados)))")
                                        .font(.body)
                                }
                                
                            case "Matrícula por Modalidad":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Escolarizada")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.escolarizadaMm)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("No escolarizada")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.noEscolarizadaMm)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mixta")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.mixtaMm)))")
                                        .font(.body)
                                }
                                
                            case "Matrícula por Programa":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TSU/PA")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.tsuPaMp)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.licenciaturaMp)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.especialidadMp)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.maestriaMp)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.doctoradoMp)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalHombresMp)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalMujeresMp)))")
                                        .font(.body)
                                }
                            case "Total de Programas":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TSU/PA")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.tsuPaTp)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.licenciaturaTp)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.especialidadTp)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.maestriaTp)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.doctoradoTp)))")
                                        .font(.body)
                                }
                            case "Matrícula por áreas de la CMPE":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Educación")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.educacionMaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AH")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.artesHumanidadesMaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CSD")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.cienciasSocialesDerechoMaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AN")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.administracionNegociosMaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CNME")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.cienciasNaturalesMatematicasEstadisticaMaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TIC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.ticMaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("IMC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.ingenieriaManufacturaConstruccionMaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AV")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.agronomiaVeterinariaMaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CS")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.cienciasSaludMaCmpe)))")
                                        .font(.body)
                                    
                                    Text("Servicios")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.serviciosMaCmpe)))")
                                        .font(.body)
                                    
                                    Text("Total Matrícula ES")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalMatriculaEs)))")
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
                    }.padding(.bottom)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }.navigationBarHidden(true)
    }
}
