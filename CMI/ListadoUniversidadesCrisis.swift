import SwiftUI

struct ListadoUniversidadesCrisis: View {
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
                if mouloViewModel.universidadesCrisis.isEmpty{
                    Alert()
                }else{
                    ForEach(mouloViewModel.universidadesCrisis, id:\.universidad.clave) { n in
                        NavigationLink(destination: DetalleListadoUniversidadesCrisis(titulo: n.universidad.nombre, items: self.items,montoPublico: n.montoPublico, totalMinistrado: n.totalMinistrado, montoConvenioSEP:n.montoConvenioSEP, montoMinistradoSEP: n.montoMinistradoSEP, fechaEjecucionSEP: n.fechaEjecucionSEP, observacionFederal: n.observacionFederal, montoConvenioEstado: n.montoConvenioEstado, totalMinistradoEstado: n.totalMinistradoEstado, ministraciones: n.ministraciones, token: token, path: path, anio:anio, entidadFederativa: entidadFederativa, subsistema:subsistema, universidad: n.universidad.nombre), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.universidad.nombre)")
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
