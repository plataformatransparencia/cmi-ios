import SwiftUI

struct ListadoTasaBrutaECIES: View {
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
                if mouloViewModel.tasaBrutaECIES.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.tasaBrutaECIES, id:\.universidad.nombre) { n in
                        NavigationLink(destination: DetalleListadoTasaBrutaECIES(titulo: n.universidad.nombre, items: items, censoEstatalHombres: n.censoEstatalHombres, censoEstatalMujeres: n.censoEstatalMujeres, totalTSUPA: n.totalTSUPA, totalLicenciatura: n.totalLicenciatura, totalHombres: n.totalHombres, totalMujeres: n.totalMujeres, totalDiscapacitados: n.totalDiscapacitados, totalHablanteLenguaIndigena: n.totalHablanteLenguaIndigena, totalEscolarizado: n.totalEscolarizado, totalNoEscolarizado: n.totalNoEscolarizado, totalMixto: n.totalMixto, matriculaTotal: n.matriculaTotal, contribucionDGESUI: n.contribucionDGESUI, contribucionDGESUIHombres: n.contribucionDGESUIHombres, contribucionDGESUIMujeres: n.contribucionDGESUIMujeres, porcentajeConDiscapacidad: n.porcentajeConDiscapacidad, porcentajeHablanteLenguaIndigena: n.porcentajeHablanteLenguaIndigena, porcentajeEscolarizado: n.porcentajeEscolarizado, porcentajeNoEscolarizado: n.porcentajeNoEscolarizado, porcentajeMixto: n.porcentajeMixto,fuentes: fichaViewModel.fuentesModII), label: {
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
            self.fichaViewModel.loadInfoFichaModII(token: self.token, path: path)
            
        }
        .navigationBarHidden(true)
    }
}
