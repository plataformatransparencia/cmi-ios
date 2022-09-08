import SwiftUI

struct DetalleListadoUniversidadesCrisis: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var montoPublico: Double
    @State var totalMinistrado: Double
    @State var montoConvenioSEP: Double
    @State var montoMinistradoSEP: Double
    @State var fechaEjecucionSEP: String
    @State var observacionFederal: String
    @State var montoConvenioEstado: Double
    @State var totalMinistradoEstado: Double
    @State var ministraciones : [Ministraciones]
    
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
                                NavigationLink(destination: DetalleItemUniversidadesCrisis(titulo: key, montoPublico: montoPublico, totalMinistrado: totalMinistrado, montoConvenioSEP: montoConvenioSEP, montoMinistradoSEP: montoMinistradoSEP, fechaEjecucionSEP: fechaEjecucionSEP, observacionFederal: observacionFederal, montoConvenioEstado: montoConvenioEstado, totalMinistradoEstado: totalMinistradoEstado, ministraciones: ministraciones, graficaUniversidadesCrisis: mouloViewModel.graficaUniversidadesCrisis)){
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
