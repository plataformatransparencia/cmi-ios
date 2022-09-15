import SwiftUI

struct ListadoPorcentajeAbsorcionAlumnosEgresados: View {
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
                if mouloViewModel.porcentajeAbosorcionAlumnosEgresados.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.porcentajeAbosorcionAlumnosEgresados, id:\.id) { n in
                        NavigationLink(destination: DetalleListadoPorcentajeAbsorcionAlumnosEgresados(titulo: n.entidadFederativa, items: items,token: token, path: path, anio: periodo, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad, totalEmsEgresadosPublicoParticular: n.totalEmsEgresadosPublicoParticular, emsEgresadosPublico: n.emsEgresadosPublico, emsEgresadosPublicoFederal: n.emsEgresadosPublicoFederal, emsEgresadosPublicoEstatal: n.emsEgresadosPublicoEstatal, emsEgresadosPublicoAutonomo: n.emsEgresadosPublicoAutonomo, emsEgresadosPublicoParticular: n.emsEgresadosPublicoParticular, totalPrimerIngresoPublicoParticular: n.totalPrimerIngresoPublicoParticular, primerIngresoPublicoTSULIC: n.primerIngresoPublicoTSULIC, primerIngresoParticularTSULIC: n.primerIngresoParticularTSULIC, entidadFedrativa: n.entidadFedrativa, totalIndiceAbsorcion: n.totalIndiceAbsorcion), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.entidadFederativa)")
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
            
        }.onAppear{
            self.mouloViewModel.loadInfoModII(token: self.token, path: path, anio: periodo, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
        }
        .navigationBarHidden(true)
    }
}
