import SwiftUI

struct ListadoUniversidadesCrisis: View {
    @State var items : [String:String]
    @State var universidadesCrisis : [UniversidadesCrisis]
    @State var graficaUniversidadesCrisis : String

    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            ForEach(universidadesCrisis, id:\.universidad.clave) { n in
                NavigationLink(destination: DetalleListadoUniversidadesCrisis(titulo: n.universidad.nombre, items: self.items,montoPublico: n.montoPublico, totalMinistrado: n.totalMinistrado, montoConvenioSEP:n.montoConvenioSEP, montoMinistradoSEP: n.montoMinistradoSEP, fechaEjecucionSEP: n.fechaEjecucionSEP, observacionFederal: n.observacionFederal, montoConvenioEstado: n.montoConvenioEstado, totalMinistradoEstado: n.totalMinistradoEstado, ministraciones: n.ministraciones, graficaUniversidadesCrisis:graficaUniversidadesCrisis ), label: {
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
