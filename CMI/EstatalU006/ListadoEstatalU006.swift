import SwiftUI

struct ListadoEstatalU006: View {
    @State var items : [String:String]
    @State var estatalU006 : [EstatalU006]
    @State var graficasEstatalU006 : [String]
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            ForEach(estatalU006, id:\.universidad.clave) { n in
                NavigationLink(destination: DetalleListadoEstatalU006(titulo: n.universidad.nombre, items: items, aportaciones: n.aportaciones, graficasEstatalU006: graficasEstatalU006, totalCalendarizado: n.totalCalendarizado, totalReportado: n.totalReportado, totalAdeudosMensuales: n.totalAdeudosMensuales), label: {
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

