import SwiftUI

struct ListadoU080: View {
    @State var items : [String:String]
    @State var u080 : [U080]
    @State var graficasU080 : [String]
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            ForEach(u080, id:\.oscCentro.cluni) { n in
                NavigationLink(destination: DetalleListadoU080(titulo: n.oscCentro.nombre, items: items, instrumento: n.instrumento, estatusConvenio: n.estatusConvenio, fechaFormalizacion: n.fechaFormalizacion, recursosAsignados: n.recursosAsignados, observacionEspecifica: n.observacionEspecifica, graficasU080: graficasU080), label: {
                    VStack(alignment: .leading){
                        HStack{
                            Text("\(n.oscCentro.nombre)")
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
