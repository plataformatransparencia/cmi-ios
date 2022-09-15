import SwiftUI

struct ListadoMontoPromedioRecursosRadicadosAlumnos: View {
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
                if mouloViewModel.montoPromedioRecursosRadicadosAlumnos.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.montoPromedioRecursosRadicadosAlumnos, id:\.nombreUniversidad) { n in
                        NavigationLink(destination: DetalleListadoMontoPromedioRecursosRadicadosAlumnos(titulo: n.nombreUniversidad, items: items, token: token, path: path, anio: periodo, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: n.nombreUniversidad, montoEstatal: n.montoEstatal, montoFederal: n.montoFederal, montoPublico: n.montoPublico, aportEst: n.aportEst, aportFed: n.aportFed, matriculaSuperior: n.matriculaSuperior, matriculaMediaSuperior: n.matriculaMediaSuperior, matriculaTotal: n.matriculaTotal, matriculaPond: n.matriculaPond, subFedAlum: n.subFedAlum, subEstAlum: n.subEstAlum, subsTotAlum: n.subsTotAlum, montPubAlum: n.montPubAlum, porcentaje: n.porcentaje), label: {
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
        }
        .navigationBarHidden(true)
    }
}
