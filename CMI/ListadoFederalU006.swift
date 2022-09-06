import SwiftUI

struct ListadoFederalU006: View {
    @State var items : [String:String]
    @State var federalU006 : [FederalU006]
    @State var graficasFederalU006 : [String]
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            ForEach(federalU006, id:\.universidad.clave) { n in
                NavigationLink(destination: DetalleListadoFederalU006(titulo: n.universidad.nombre, items: items,federalU006: federalU006,listaCalendarizado: n.listaCalendarizado, listaReportado: n.listaReportado, listaPlataforma: n.listaPlataforma, totalCalendarizado: n.totalCalendarizado, totalComprobado: n.totalComprobado, totalReportado: n.totalReportado ,graficasFederalU006: graficasFederalU006), label: {
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
