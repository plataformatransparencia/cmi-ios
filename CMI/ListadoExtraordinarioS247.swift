import SwiftUI

struct ListadoExtraordinarioS247: View {
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
                if mouloViewModel.extraordinarioS247.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.extraordinarioS247, id:\.universidad.clave) { n in
                        NavigationLink(destination: DetalleListadoExtraordinarioS247(titulo: n.universidad.nombre, items: items, instrumento: n.instrumentoProdep, estatusConvenio: n.estatusProdep, fechaProdep: n.fechaProdep, montoFederalProdep: n.montoFederalProdep, token: token, path: path, anio:anio, entidadFederativa: entidadFederativa, subsistema:subsistema, universidad: n.universidad.nombre,fuentes:fichaViewModel.fuenteModIII), label: {
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
