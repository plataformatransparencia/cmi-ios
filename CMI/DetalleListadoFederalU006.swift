import SwiftUI

struct DetalleListadoFederalU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var listaCalendarizado : [ListaCalendarizado]
    @State var listaReportado: [ListaReportado]
    @State var listaPlataforma: [ListaPlataforma]
    @State var totalCalendarizado: Double
    @State var totalComprobado: Double
    @State var totalReportado: Double
    
    @StateObject var mouloViewModel = ModuloViewModel()
    @State var token: String
    @State var path: String
    @State var anio: String
    @State var entidadFederativa: String
    @State var subsistema: String
    @State var universidad: String
    
    var body: some View {
        VStack{
            ZStack{
                ScrollView(showsIndicators: true){
                    VStack{
                        HStack{
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "chevron.left")
                                    .font(.title3.bold())
                                
                            })
                            Spacer()
                            Text("\(titulo)")
                                .font(.title3.bold())
                                .multilineTextAlignment(.center)
                            Spacer()
                        }.foregroundColor(Color("gris_2"))
                            .padding([.horizontal, .top])
                        
                        if mouloViewModel.isTrue{
                            ProgressView()
                        }else{
                            ForEach(items.sorted(by: >), id:\.key){key, value in
                                NavigationLink(destination: DetalleItemFederalU006(titulo: key, listaCalendarizado: listaCalendarizado, listaReportado: listaReportado, listaPlataforma: listaPlataforma, totalCalendarizado:totalCalendarizado, totalComprobado: totalComprobado, totalReportado:totalReportado, graficasFederalU006: mouloViewModel.graficasFederalU006)){
                                    ItemView(indicador: key)
                                }
                                
                            }
                        }
                        
                        
                    }.padding(.bottom)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }.onAppear{
            self.mouloViewModel.loadGraficasModIII(token: self.token, path: path, anio: anio, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
        }
        .navigationBarHidden(true)
    }
}
