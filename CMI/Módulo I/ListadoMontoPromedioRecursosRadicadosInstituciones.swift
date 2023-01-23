import SwiftUI

struct ListadoMontoPromedioRecursosRadicadosInstituciones: View {
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
                if mouloViewModel.montoPromedioRecursosRadicadosInstituciones.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.montoPromedioRecursosRadicadosInstituciones, id:\.nombreUniversidad) { n in
                        NavigationLink(destination: DetalleListadoMontoPromedioRecursosRadicadosInstituciones(titulo: n.nombreUniversidad, items: items, token: token, path: path, anio: periodo, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: n.nombreUniversidad, montoEstatal: n.montoEstatal, montoFederal: n.montoFederal, montoPublico: n.montoPublico, aportEst: n.aportEst, aportFed: n.aportFed, aportEstatal: n.aportEstatal, aportFederal: n.aportFederal,fuentes: fichaViewModel.fuentesModII), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.nombreUniversidad)")
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
