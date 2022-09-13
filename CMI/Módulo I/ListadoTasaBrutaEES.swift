import SwiftUI

struct ListadoTasaBrutaEES: View {
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
                if mouloViewModel.tasaBrutaEES.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.tasaBrutaEES, id:\.entidadFederativa.valor) { n in
                        NavigationLink(destination: DetalleListadoTasaBrutaEES(titulo: n.entidadFederativa.valor, items: items, matriculaTotal: n.matriculaTotal, censoTotal: n.censoTotal, tasaEscolarizacion: n.tasaEscolarizacion, matriculaMuj: n.matriculaMuj, censoMuj: n.censoMuj, tasaMujeres: n.tasaMujeres, matriculaHom: n.matriculaHom, censoHom: n.censoHom, tasaHombres: n.tasaHombres), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.entidadFederativa.valor)")
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
            self.mouloViewModel.loadInfoModII(token: self.token, path: path, anio: periodo, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
        }
        .navigationBarHidden(true)
    }
}
