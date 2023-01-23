import SwiftUI

struct DetalleListadoPorcentajeCuerposAcademicosConsolidados: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @StateObject var mouloViewModel = ModuloViewModel()
    @State var token: String
    @State var path: String
    @State var anio: String
    @State var entidadFederativa: String
    @State var subsistema: String
    @State var universidad: String
    @State var cicloMatricula: String
    @State var caefCienciasAgropecuarias: Int
    @State var caefCienciasSocialesAdministrativas: Int
    @State var caefCienciasSalud: Int
    @State var caefCienciasIngenieriaTecnologia: Int
    @State var caefCienciasNaturalezExactas: Int
    @State var caefCienciasEducacionHumanidadesArte: Int
    @State var caecCienciasAgropecuarias: Int
    @State var caecCienciasSocialesAdministrativas: Int
    @State var caecCienciasSalud: Int
    @State var caecCienciasIngenieriaTecnologia: Int
    @State var caecCienciasNaturalezExactas: Int
    @State var caecCienciasEducacionHumanidadesArte: Int
    @State var cacCienciasAgropecuarias: Int
    @State var cacCienciasSocialesAdministrativas: Int
    @State var cacCienciasSalud: Int
    @State var cacCienciasIngenieriaTecnologia: Int
    @State var cacCienciasNaturalezExactas: Int
    @State var cacCienciasEducacionHumanidadesArte: Int
    @State var totalCaef: Int
    @State var totalCaec: Int
    @State var totalCac: Int
    @State var totalCa: Int
    @State var porCaefCienciasAgropecuarias: String
    @State var porCaefCienciasSocialesAdministrativas: String
    @State var porCaefCienciasSalud: String
    @State var porCaefCienciasIngenieriaTecnologia: String
    @State var porCaefCienciasNaturalezExactas: String
    @State var porCaefCienciasEducacionHumanidadesArte: String
    @State var porCaefTotalCaef: String
    @State var porCaecCienciasAgropecuarias: String
    @State var porCaecCienciasSocialesAdministrativas: String
    @State var porCaecCienciasSalud: String
    @State var porCaecCienciasIngenieriaTecnologia: String
    @State var porCaecCienciasNaturalezExactas: String
    @State var porCaecCienciasEducacionHumanidadesArte: String
    @State var porCaecTotalCaec: String
    @State var porCacCienciasAgropecuarias: String
    @State var porCacCienciasSocialesAdministrativas: String
    @State var porCacCienciasSalud: String
    @State var porCacCienciasIngenieriaTecnologia: String
    @State var porCacCienciasNaturalezExactas: String
    @State var porCacCienciasEducacionHumanidadesArte: String
    @State var porCacTotalCac: String
    @State var fuentes: [FuentesModII]
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
                        
                        ForEach(items.sorted(by: <), id:\.key){key, value in
                            NavigationLink(destination: DetalleItemPorcentajeCuerposAcademicosConsolidados(titulo: key, cicloMatricula: cicloMatricula, caefCienciasAgropecuarias: caefCienciasAgropecuarias, caefCienciasSocialesAdministrativas: caefCienciasSocialesAdministrativas, caefCienciasSalud: caefCienciasSalud, caefCienciasIngenieriaTecnologia: caefCienciasIngenieriaTecnologia, caefCienciasNaturalezExactas: caefCienciasNaturalezExactas, caefCienciasEducacionHumanidadesArte: caefCienciasEducacionHumanidadesArte, caecCienciasAgropecuarias: caecCienciasAgropecuarias, caecCienciasSocialesAdministrativas: caecCienciasSocialesAdministrativas, caecCienciasSalud: caecCienciasSalud, caecCienciasIngenieriaTecnologia: caecCienciasIngenieriaTecnologia, caecCienciasNaturalezExactas: caecCienciasNaturalezExactas, caecCienciasEducacionHumanidadesArte: caecCienciasEducacionHumanidadesArte, cacCienciasAgropecuarias: cacCienciasAgropecuarias, cacCienciasSocialesAdministrativas: cacCienciasSocialesAdministrativas, cacCienciasSalud: cacCienciasSalud, cacCienciasIngenieriaTecnologia: cacCienciasIngenieriaTecnologia, cacCienciasNaturalezExactas: cacCienciasNaturalezExactas, cacCienciasEducacionHumanidadesArte: cacCienciasEducacionHumanidadesArte, totalCaef: totalCaef, totalCaec: totalCaec, totalCac: totalCac, totalCa: totalCa, porCaefCienciasAgropecuarias: porCaefCienciasAgropecuarias, porCaefCienciasSocialesAdministrativas: porCaefCienciasSocialesAdministrativas, porCaefCienciasSalud: porCaefCienciasSalud, porCaefCienciasIngenieriaTecnologia: porCaefCienciasIngenieriaTecnologia, porCaefCienciasNaturalezExactas: porCaefCienciasNaturalezExactas, porCaefCienciasEducacionHumanidadesArte: porCaefCienciasEducacionHumanidadesArte, porCaefTotalCaef: porCaefTotalCaef, porCaecCienciasAgropecuarias: porCaecCienciasAgropecuarias, porCaecCienciasSocialesAdministrativas: porCaecCienciasSocialesAdministrativas, porCaecCienciasSalud: porCaecCienciasSalud, porCaecCienciasIngenieriaTecnologia: porCaecCienciasIngenieriaTecnologia, porCaecCienciasNaturalezExactas: porCaecCienciasNaturalezExactas, porCaecCienciasEducacionHumanidadesArte: porCaecCienciasEducacionHumanidadesArte, porCaecTotalCaec: porCaecTotalCaec, porCacCienciasAgropecuarias: porCacCienciasAgropecuarias, porCacCienciasSocialesAdministrativas: porCacCienciasSocialesAdministrativas, porCacCienciasSalud: porCacCienciasSalud, porCacCienciasIngenieriaTecnologia: porCacCienciasIngenieriaTecnologia, porCacCienciasNaturalezExactas: porCacCienciasNaturalezExactas, porCacCienciasEducacionHumanidadesArte: porCacCienciasEducacionHumanidadesArte, porCacTotalCac: porCacTotalCac, fuentes: fuentes)){
                                ItemView(indicador: key)
                                
                            }
                        }
                        
                    }.padding(.bottom)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }
        .navigationBarHidden(true)
    }
}
