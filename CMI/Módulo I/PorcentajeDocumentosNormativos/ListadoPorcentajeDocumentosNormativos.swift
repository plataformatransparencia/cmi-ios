import SwiftUI

struct ListadoPorcentajeDocumentosNormativos: View {
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
                if mouloViewModel.porcentajeDocumentosNormativos.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.porcentajeDocumentosNormativos, id:\.id) { n in
                        NavigationLink(destination: DetalleListadoDocumentosNormativos(titulo: "\(n.ejercicioFiscal)", numeroDocNorProgram: n.numeroDocNorProgram,fuentes: fichaViewModel.fuentesModII), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text(String(n.ejercicioFiscal))
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

