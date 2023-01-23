import SwiftUI

struct ListadoExtraordinarioU006: View {
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
                if mouloViewModel.extraordinarioU006.isEmpty{
                    Alert()
                }else{
                    ForEach(mouloViewModel.extraordinarioU006, id:\.universidad.clave) { n in
                        NavigationLink(destination: DetalleListadoExtraordinarioU006(titulo: n.universidad.nombre, items: items, montoFederalRecExt: n.montoFederalRecExt, instrumentoRecExt: n.instrumentoRecExt, fechaExt: n.fechaExt, estatusRecRxt: n.estatusRecRxt, montoRegresoClases: n.montoRegresoClases, instrumentoRegresoClases: n.instrumentoRegresoClases, estatusRegresoClases: n.estatusRegresoClases, fechaFirmaConvenioRegresoClases: n.fechaFirmaConvenioRegresoClases, montoInclusionEstancias: n.montoInclusionEstancias, instrumentoInclusionEstancias: n.instrumentoInclusionEstancias, estatusInclusionEstancias: n.estatusInclusionEstancias, fechaFirmaConvenioInclusionEstancias: n.fechaFirmaConvenioInclusionEstancias, instrumentoIncrementoSalarial: n.instrumentoIncrementoSalarial, estatusIncrementoSalarial: n.estatusIncrementoSalarial, informacionIncrementoSalarial: n.informacionIncrementoSalarial, montoFederalIncrementoSalarial: n.montoFederalIncrementoSalarial, clcIncrementoSalarial: n.clcIncrementoSalarial, montoEstatalIncSalU006: n.montoEstatalIncSalU006, montoPublicoIncSalU006: n.montoPublicoIncSalU006, deficit: n.deficit, instrumentoDeficit: n.instrumentoDeficit, estatusDeficit: n.estatusDeficit, fechaFirmaConvenioDeficitU006: n.fechaFirmaConvenioDeficitU006, montoEstatalDeficitU006: n.montoEstatalDeficitU006, montoPublicoDeficitU006: n.montoPublicoDeficitU006, token: token, path: path, anio:anio, entidadFederativa: entidadFederativa, subsistema:subsistema, universidad: n.universidad.nombre,fuentes:fichaViewModel.fuenteModIII), label: {
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

