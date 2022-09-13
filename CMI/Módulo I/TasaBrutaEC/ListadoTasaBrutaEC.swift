import SwiftUI

struct ListadoTasaBrutaEC: View {
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
                if mouloViewModel.tasaBrutaEC.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.tasaBrutaEC, id:\.universidad.siglas) { n in
                        NavigationLink(destination: DetalleListadoTasaBrutaEC(titulo: n.universidad.siglas, items: items, contribucion: n.contribucion, contribucionHombres: n.contribucionHombres, contribucionMujeres: n.contribucionMujeres), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.entidadFederativa.valor)")
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                }
                                HStack{
                                    Text("\(n.universidad.siglas)")
                                        .multilineTextAlignment(.leading)
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
