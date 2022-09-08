import SwiftUI

struct ListadoEstatalU006: View {
    @State var items : [String:String]
    @StateObject var mouloViewModel = ModuloViewModel()
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
                if mouloViewModel.estatalU006.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.estatalU006, id:\.universidad.clave) { n in
                        NavigationLink(destination: DetalleListadoEstatalU006(titulo: n.universidad.nombre, items: items, aportaciones: n.aportaciones, totalCalendarizado: n.totalCalendarizado, totalReportado: n.totalReportado, totalAdeudosMensuales: n.totalAdeudosMensuales, token: token, path: path, anio:anio, entidadFederativa: entidadFederativa, subsistema:subsistema, universidad: n.universidad.nombre), label: {
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
        }
        .navigationBarHidden(true)
    }
}

