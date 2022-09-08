import SwiftUI

struct ListadoIndicadoresSubsistema: View {
    @State var items : [String:String]
    @StateObject var mouloViewModel = ModuloViewModel()
    @State var token: String
    @State var path: String
    @State var anio: String
    @State var entidadFederativa: String
    @State var subsistema: String
    @State var universidad: String
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            
            if mouloViewModel.isTrue{
                ProgressView()
            }else{
                if mouloViewModel.indicadoresSubsistema.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.indicadoresSubsistema, id:\.subsistema.siglas) { n in
                        NavigationLink(destination: DetalleListadoIndicadoresSubsistema(titulo: n.subsistema.valor, items: items, tsuPaNe: n.tsuPaNe, licenciaturaNe: n.licenciaturaNe, totalTsuLicNe: n.totalTsuLicNe, especialidadNe: n.especialidadNe, maestriaNe: n.maestriaNe, doctoradoNe: n.doctoradoNe, totalPosgradoNe: n.totalPosgradoNe, totalTsuLicPosNe: n.totalTsuLicPosNe, hombresEsNe: n.hombresEsNe, mujeresEsNe: n.mujeresEsNe, totalEsNe: n.totalEsNe, totalHombresDiscapacidadEsNe: n.totalHombresDiscapacidadEsNe, totalMujeresDiscapacidadEsNe: n.totalMujeresDiscapacidadEsNe, totalHombresHliEsNe: n.totalHombresHliEsNe, totalMujeresHliEsNe: n.totalMujeresHliEsNe, hombresEgresados: n.hombresEgresados, mujeresEgresados: n.mujeresEgresados, totalDiscapacidadEgresados: n.totalDiscapacidadEgresados, totalHliEgresados: n.totalHliEgresados, hombresTitulados: n.hombresTitulados, mujeresTitulados: n.mujeresTitulados, totalDiscapacidadTitulados: n.totalDiscapacidadTitulados, totalHliTitulados: n.totalHliTitulados, escolarizadaMm: n.escolarizadaMm, noEscolarizadaMm: n.noEscolarizadaMm, mixtaMm: n.mixtaMm, tsuPaMp: n.tsuPaMp, licenciaturaMp: n.licenciaturaMp, especialidadMp: n.especialidadMp, maestriaMp: n.maestriaMp, doctoradoMp: n.doctoradoMp, totalHombresMp: n.totalHombresMp, totalMujeresMp: n.totalMujeresMp, tsuPaTp: n.tsuPaTp, licenciaturaTp: n.licenciaturaTp, especialidadTp: n.especialidadTp, maestriaTp: n.maestriaTp, doctoradoTp: n.doctoradoTp, educacionMaCmpe: n.educacionMaCmpe, artesHumanidadesMaCmpe: n.artesHumanidadesMaCmpe, cienciasSocialesDerechoMaCmpe: n.cienciasSocialesDerechoMaCmpe, administracionNegociosMaCmpe: n.administracionNegociosMaCmpe, cienciasNaturalesMatematicasEstadisticaMaCmpe: n.cienciasNaturalesMatematicasEstadisticaMaCmpe, ticMaCmpe: n.ticMaCmpe, ingenieriaManufacturaConstruccionMaCmpe: n.ingenieriaManufacturaConstruccionMaCmpe, agronomiaVeterinariaMaCmpe: n.agronomiaVeterinariaMaCmpe, cienciasSaludMaCmpe: n.cienciasSaludMaCmpe, serviciosMaCmpe: n.serviciosMaCmpe, totalMatriculaEs: n.totalMatriculaEs, token: token, path: path, anio:anio, entidadFederativa: entidadFederativa, subsistema:subsistema, universidad: n.subsistema.valor), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.subsistema.valor)")
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                }
                                .font(.body)
                                .foregroundColor(Color("gris_2"))
                            }.padding([.top, .horizontal])
                        })
                    }
                }
            }
            
        }.onAppear{
            self.mouloViewModel.loadInfoModIII(token: self.token, path: path, anio: anio, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
        }
        .navigationBarHidden(true)
    }
}
