import SwiftUI

struct ListadoIndicadoresIES: View {
    @State var items : [String:String]
    @State var indicadoresIES : [IndicadoresIES]
    @State var graficasIndicadoresIES : [String]
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            ForEach(indicadoresIES, id:\.universidad.clave) { n in
                NavigationLink(destination: DetalleListadoIndicadoresIES(titulo: n.universidad.nombre, items: items, indicadorIES: n.indicadorIES, sisup: n.sisup, graficasIndicadoresIES: graficasIndicadoresIES), label: {
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
