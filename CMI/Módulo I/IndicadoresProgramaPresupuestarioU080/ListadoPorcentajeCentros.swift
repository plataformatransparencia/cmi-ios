import SwiftUI

struct ListadoPorcentajeCentros: View {
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
                if mouloViewModel.porcentajeCentros.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.porcentajeCentros, id:\.id) { n in
                        NavigationLink(destination: DetalleListadoPorcentajeCentros(titulo: "\(n.ejercicioFiscal)", total: n.total, nota: n.nota), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.ejercicioFiscal)")
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
