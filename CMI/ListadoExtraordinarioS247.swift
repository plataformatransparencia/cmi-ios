import SwiftUI

struct ListadoExtraordinarioS247: View {
    @State var items : [String:String]
    @State var extraordinarioS247 : [ExtraordinarioS247]
    @State var graficaExtraordinarioS247 : [String]
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            ForEach(extraordinarioS247, id:\.universidad.clave) { n in
                NavigationLink(destination: DetalleListadoExtraordinarioS247(titulo: n.universidad.nombre, items: items, instrumento: n.instrumentoProdep, estatusConvenio: n.estatusProdep, fechaProdep: n.fechaProdep, montoFederalProdep: n.montoFederalProdep, graficaExtraordinarioS247: graficaExtraordinarioS247), label: {
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
