import SwiftUI

struct DetalleListadoIndicadoresSubsistema: View {
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
                            NavigationLink(destination: DetalleItemIndicadoresSubsistema(titulo: key, items: items, tsuPaNe: tsuPaNe, licenciaturaNe: licenciaturaNe, totalTsuLicNe: totalTsuLicNe, especialidadNe: especialidadNe, maestriaNe: maestriaNe, doctoradoNe: doctoradoNe, totalPosgradoNe: totalPosgradoNe, totalTsuLicPosNe: totalTsuLicPosNe, hombresEsNe: hombresEsNe, mujeresEsNe: mujeresEsNe, totalEsNe: totalEsNe, totalHombresDiscapacidadEsNe: totalHombresDiscapacidadEsNe, totalMujeresDiscapacidadEsNe: totalMujeresDiscapacidadEsNe, totalHombresHliEsNe: totalHombresHliEsNe, totalMujeresHliEsNe: totalMujeresHliEsNe, hombresEgresados: hombresEgresados, mujeresEgresados: mujeresEgresados, totalDiscapacidadEgresados: totalDiscapacidadEgresados, totalHliEgresados: totalHliEgresados, hombresTitulados: hombresTitulados, mujeresTitulados: mujeresTitulados, totalDiscapacidadTitulados: totalDiscapacidadTitulados, totalHliTitulados: totalHliTitulados, escolarizadaMm: escolarizadaMm, noEscolarizadaMm: noEscolarizadaMm, mixtaMm: mixtaMm, tsuPaMp: tsuPaMp, licenciaturaMp: licenciaturaMp, especialidadMp: especialidadMp, maestriaMp: maestriaMp, doctoradoMp: doctoradoMp, totalHombresMp: totalHombresMp, totalMujeresMp: totalMujeresMp, tsuPaTp: tsuPaTp, licenciaturaTp: licenciaturaTp, especialidadTp: especialidadTp, maestriaTp: maestriaTp, doctoradoTp: doctoradoTp, educacionMaCmpe: educacionMaCmpe, artesHumanidadesMaCmpe: artesHumanidadesMaCmpe, cienciasSocialesDerechoMaCmpe: cienciasSocialesDerechoMaCmpe, administracionNegociosMaCmpe: administracionNegociosMaCmpe, cienciasNaturalesMatematicasEstadisticaMaCmpe: cienciasNaturalesMatematicasEstadisticaMaCmpe, ticMaCmpe: ticMaCmpe, ingenieriaManufacturaConstruccionMaCmpe: ingenieriaManufacturaConstruccionMaCmpe, agronomiaVeterinariaMaCmpe: agronomiaVeterinariaMaCmpe, cienciasSaludMaCmpe: cienciasSaludMaCmpe, serviciosMaCmpe: serviciosMaCmpe, totalMatriculaEs: totalMatriculaEs, graficasIndicadoresSubsistema: graficasIndicadoresSubsistema)){
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
