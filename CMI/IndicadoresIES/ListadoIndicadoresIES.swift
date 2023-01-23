import SwiftUI

struct ListadoIndicadoresIES: View {
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
                if mouloViewModel.indicadoresIES.isEmpty{
                    Alert()
                }else{
                    ForEach(mouloViewModel.indicadoresIES, id:\.universidad.clave) { n in
                        NavigationLink(destination: DetalleListadoIndicadoresIES(titulo: n.universidad.nombre, items: items, indicadorIES: n.indicadorIES, sisup: n.sisup, token: token, path: path, anio:anio, entidadFederativa: entidadFederativa, subsistema:subsistema, universidad: n.universidad.nombre,fuentes:fichaViewModel.fuenteModIII), label: {
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
            self.fichaViewModel.loadInfoFichaModIII(token: token, path: path)
            
        }
        .navigationBarHidden(true)
    }
}
