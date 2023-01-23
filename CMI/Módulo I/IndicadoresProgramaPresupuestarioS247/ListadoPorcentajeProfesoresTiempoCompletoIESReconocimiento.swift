import SwiftUI

struct ListadoPorcentajeProfesoresTiempoCompletoIESReconocimiento: View {
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
                if mouloViewModel.porcentajeProfesoresTiempoCompletoIESReconocimiento.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.porcentajeProfesoresTiempoCompletoIESReconocimiento, id:\.nombre) { n in
                        NavigationLink(destination: DetalleListadoPorcentajeProfesoresTiempoCompletoIESReconocimiento(titulo: n.nombre, items: items, token: token, path: path, anio: periodo, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: n.nombre, cicloMatricula: n.cicloMatricula, totalPtc: n.totalPtc, ptcLicenciatura: n.ptcLicenciatura, ptcMaestria: n.ptcMaestria, ptcDoctorado: n.ptcDoctorado, ptcPosgrado: n.ptcPosgrado, perfilDeseable: n.perfilDeseable, snic: n.snic, sni1: n.sni1, sni2: n.sni2, sni3: n.sni3, totalSniVigente: n.totalSniVigente, porcentajeGrafica: n.porcentajeGrafica,fuentes: fichaViewModel.fuentesModII), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.nombre)")
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
            self.fichaViewModel.loadInfoFichaModII(token: self.token, path: path)
            
        }
        .navigationBarHidden(true)
    }
}
