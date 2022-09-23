import SwiftUI

struct ListadoPorcentajeCuerposAcademicosConsolidados: View {
    @State var items : [String:String]
    @StateObject var mouloViewModel = ModuloViewModel()
    @State var token: String
    @State var path: String
    @State var periodo: String
    @State var entidadFederativa: String
    @State var subsistema: String
    @State var universidad: String
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            if mouloViewModel.isTrue{
                ProgressView()
            }else{
                if mouloViewModel.porcentajeCuerposAcademicosConsolidados.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.porcentajeCuerposAcademicosConsolidados, id:\.nombreUniversidad) { n in
                        if (n.nombreUniversidad != " "){
                            NavigationLink(destination: DetalleListadoPorcentajeCuerposAcademicosConsolidados(titulo: n.nombreUniversidad, items: items, token: token, path: path, anio: periodo, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad, cicloMatricula: n.cicloMatricula, caefCienciasAgropecuarias: n.caefCienciasAgropecuarias, caefCienciasSocialesAdministrativas: n.caefCienciasSocialesAdministrativas, caefCienciasSalud: n.caefCienciasSalud, caefCienciasIngenieriaTecnologia: n.caefCienciasIngenieriaTecnologia, caefCienciasNaturalezExactas: n.caefCienciasNaturalezExactas, caefCienciasEducacionHumanidadesArte: n.caefCienciasEducacionHumanidadesArte, caecCienciasAgropecuarias: n.caecCienciasAgropecuarias, caecCienciasSocialesAdministrativas: n.caecCienciasSocialesAdministrativas, caecCienciasSalud: n.caecCienciasSalud, caecCienciasIngenieriaTecnologia: n.caecCienciasIngenieriaTecnologia, caecCienciasNaturalezExactas: n.caecCienciasNaturalezExactas, caecCienciasEducacionHumanidadesArte: n.caecCienciasEducacionHumanidadesArte, cacCienciasAgropecuarias: n.cacCienciasAgropecuarias, cacCienciasSocialesAdministrativas: n.cacCienciasSocialesAdministrativas, cacCienciasSalud: n.cacCienciasSalud, cacCienciasIngenieriaTecnologia: n.cacCienciasIngenieriaTecnologia, cacCienciasNaturalezExactas: n.cacCienciasNaturalezExactas, cacCienciasEducacionHumanidadesArte: n.cacCienciasEducacionHumanidadesArte, totalCaef: n.totalCaef, totalCaec: n.totalCaec, totalCac: n.totalCac, totalCa: n.totalCa, porCaefCienciasAgropecuarias: n.porCaefCienciasAgropecuarias, porCaefCienciasSocialesAdministrativas: n.porCaefCienciasSocialesAdministrativas, porCaefCienciasSalud: n.porCaefCienciasSalud, porCaefCienciasIngenieriaTecnologia: n.porCaefCienciasIngenieriaTecnologia, porCaefCienciasNaturalezExactas: n.porCaefCienciasNaturalezExactas, porCaefCienciasEducacionHumanidadesArte: n.porCaefCienciasEducacionHumanidadesArte, porCaefTotalCaef: n.porCaefTotalCaef, porCaecCienciasAgropecuarias: n.porCaecCienciasAgropecuarias, porCaecCienciasSocialesAdministrativas: n.porCaecCienciasSocialesAdministrativas, porCaecCienciasSalud: n.porCaecCienciasSalud, porCaecCienciasIngenieriaTecnologia: n.porCaecCienciasIngenieriaTecnologia, porCaecCienciasNaturalezExactas: n.porCaecCienciasNaturalezExactas, porCaecCienciasEducacionHumanidadesArte: n.porCaecCienciasEducacionHumanidadesArte, porCaecTotalCaec: n.porCaecTotalCaec, porCacCienciasAgropecuarias: n.porCacCienciasAgropecuarias, porCacCienciasSocialesAdministrativas: n.porCacCienciasSocialesAdministrativas, porCacCienciasSalud: n.porCacCienciasSalud, porCacCienciasIngenieriaTecnologia: n.porCacCienciasIngenieriaTecnologia, porCacCienciasNaturalezExactas: n.porCacCienciasNaturalezExactas, porCacCienciasEducacionHumanidadesArte: n.porCacCienciasEducacionHumanidadesArte, porCacTotalCac: n.porCacTotalCac), label: {
                                VStack(alignment: .leading){
                                    HStack{
                                        Text("\(n.nombreUniversidad)")
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                    }
                                }.font(.body)
                                .foregroundColor(Color("gris_2"))
                                .padding([.top, .horizontal])
                                
                                
                            })
                        }
                    }
                }
            }
        }.onAppear{
            self.mouloViewModel.loadInfoModII(token: self.token, path: path, anio: periodo, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
        }
        .navigationBarHidden(true)
        .padding(.bottom)
    }
}
