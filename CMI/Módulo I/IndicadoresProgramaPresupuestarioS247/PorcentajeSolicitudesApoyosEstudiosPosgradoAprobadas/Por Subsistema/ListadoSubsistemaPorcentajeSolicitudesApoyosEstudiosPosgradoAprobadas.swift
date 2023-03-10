import SwiftUI

struct ListadoSubsistemaPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas: View {
    @State var items : [String:String]
    @StateObject var mouloViewModel = ModuloViewModel()
    @StateObject var fichaViewModel = FichaViewModel()
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
                HStack{
                    Text("Por Subsistemas")
                        .font(.body.bold())
                        .foregroundColor(Color("gris_2"))
                    Spacer()
                }.padding([.horizontal])
                if mouloViewModel.porcentajeSolicitudesApoyosEstudiosPosgradoAprobadasSubsistema.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.porcentajeSolicitudesApoyosEstudiosPosgradoAprobadasSubsistema, id:\.subsistema) { n in
                        NavigationLink(destination: DetalleListadoSubsistemaListadoPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas(titulo: n.subsistema, totalOtorgado: n.totalOtorgado, totalSolicitado: n.totalSolicitado, totalPorcentaje: n.totalPorcentaje, token: token, path: "\(path)/subsistema", periodo: periodo, entidadFederativa: entidadFederativa, subsistema: n.subsistema, universidad: universidad,fuentes: fichaViewModel.fuentesModII), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.subsistema)")
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
            self.mouloViewModel.loadInfoModII(token: self.token, path: "\(path)/subsistema", anio: periodo, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
            self.fichaViewModel.loadInfoFichaModII(token: self.token, path: path)
            
        }
        .navigationBarHidden(true)
        .padding(.bottom)
    }
}
