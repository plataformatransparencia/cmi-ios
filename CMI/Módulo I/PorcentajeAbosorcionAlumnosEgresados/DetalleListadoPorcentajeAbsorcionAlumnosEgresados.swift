import SwiftUI

struct DetalleListadoPorcentajeAbsorcionAlumnosEgresados: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @StateObject var mouloViewModel = ModuloViewModel()
    @State var token: String
    @State var path: String
    @State var anio: String
    @State var entidadFederativa: String
    @State var subsistema: String
    @State var universidad: String
    @State var totalEmsEgresadosPublicoParticular: Int
    @State var emsEgresadosPublico: Int
    @State var emsEgresadosPublicoFederal: Int
    @State var emsEgresadosPublicoEstatal: Int
    @State var emsEgresadosPublicoAutonomo: Int
    @State var emsEgresadosPublicoParticular: Int
    @State var totalPrimerIngresoPublicoParticular: Int
    @State var primerIngresoPublicoTSULIC: Int
    @State var primerIngresoParticularTSULIC: Int
    @State var entidadFedrativa: String
    @State var totalIndiceAbsorcion: Double
    @State var fuentes: [FuentesModII]
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
                            ForEach(items.sorted(by: <), id:\.key){key, value in
                                NavigationLink(destination: DetalleItemPorcentajeAbsocionAlumnosEgresados(titulo: key, totalEmsEgresadosPublicoParticular: totalEmsEgresadosPublicoParticular, emsEgresadosPublico: emsEgresadosPublico, emsEgresadosPublicoFederal: emsEgresadosPublicoFederal, emsEgresadosPublicoEstatal: emsEgresadosPublicoEstatal, emsEgresadosPublicoAutonomo: emsEgresadosPublicoAutonomo, emsEgresadosPublicoParticular: emsEgresadosPublicoParticular, totalPrimerIngresoPublicoParticular: totalPrimerIngresoPublicoParticular, primerIngresoPublicoTSULIC: primerIngresoPublicoTSULIC, primerIngresoParticularTSULIC: primerIngresoParticularTSULIC, entidadFedrativa: entidadFedrativa, totalIndiceAbsorcion: totalIndiceAbsorcion, graficasPorcentajeAbsocionAlumnosEgresados: mouloViewModel.graficasPorcentajeAbosorcionAlumnosEgresados, fuentes: fuentes)){
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
            self.mouloViewModel.loadGraficasModII(token: self.token, path: path, anio: anio, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
        }
        .navigationBarHidden(true)
    }
}

