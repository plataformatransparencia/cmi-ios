import SwiftUI

struct ListadoU080: View {
    @State var items : [String:String]
    @StateObject var mouloViewModel = ModuloViewModel()
    @StateObject var fichaViewModel = FichaViewModel()
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
                if mouloViewModel.u080.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.u080, id:\.oscCentro.cluni) { n in
                        NavigationLink(destination: DetalleListadoU080(titulo: n.oscCentro.nombre, items: items, instrumento: n.instrumento, estatusConvenio: n.estatusConvenio, fechaFormalizacion: n.fechaFormalizacion, recursosAsignados: n.recursosAsignados, observacionEspecifica: n.observacionEspecifica, token: token, path: path, anio:anio, entidadFederativa: entidadFederativa, subsistema:subsistema, universidad: n.oscCentro.nombre,fuentes:fichaViewModel.fuenteModIII), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.oscCentro.nombre)")
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
            self.fichaViewModel.loadInfoFichaModIII(token: token, path: path)
            
        }
        .navigationBarHidden(true)
    }
}
