import SwiftUI

struct ListadoUniversidadPorcentajeApoyosIESIncorporacion: View {
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
                HStack{
                    Text("Por Universidades")
                        .font(.body.bold())
                        .foregroundColor(Color("gris_2"))
                    Spacer()
                }.padding([.horizontal])
                if mouloViewModel.porcentajeApoyosIESIncorporacionUniversidad.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.porcentajeApoyosIESIncorporacionUniversidad, id:\.universidad.nombre) { n in
                        NavigationLink(destination: DetalleListadoUniversidadPorcentajeApoyosIESIncorporacion(titulo: n.universidad.nombre, items: items, otorgado: n.otorgado, solicitado: n.solicitado, porcentaje: n.porcentaje, token: token, path: path, periodo: periodo, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: n.universidad.nombre), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.universidad.nombre)")
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
        .padding(.bottom)
    }
}
