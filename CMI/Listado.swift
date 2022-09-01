import SwiftUI

struct Listado: View {
    @State var items : [String:String]
    @State var ordinarioU006 : [OrdinarioU006]
    @State var graficasOrdinarioU006 : [String]
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            ForEach(ordinarioU006, id:\.universidad.clave) { n in
                NavigationLink(destination: DetalleListado(titulo: "\(n.universidad.nombre)", items: items, instrumento: n.instrumento, estatusConvenio: n.estatusConvenio, montoEstatal: n.montoEstatal, montoFederal: n.montoFederal, montoPublico: n.montoPublico, matriculaSuperior: n.matriculaSuperior, matriculaMediaSuperior: n.matriculaMediaSuperior, porcentajeFederal: n.porcentajeFederal, porcentajeEstatal: n.porcentajeEstatal, matriculaTotal: n.matriculaTotal, matriculaTotalPonderada: n.matriculaTotalPonderada, subsidioEstatalPorAlumno: n.subsidioEstatalPorAlumno, subsidioFederalPorAlumno: n.subsidioFederalPorAlumno, subsidioPublicoPorAlumno: n.subsidioPublicoPorAlumno, graficasOrdinarioU006: graficasOrdinarioU006), label: {
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
        }.navigationBarHidden(true)
    }
}

