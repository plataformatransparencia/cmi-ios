import SwiftUI

struct DetalleListadoPorcentajeProfesoresTiempoCompletoIESReconocimiento: View {
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
    @State var cicloMatricula: String
    @State var totalPtc: Int
    @State var ptcLicenciatura: Int
    @State var ptcMaestria: Int
    @State var ptcDoctorado: Int
    @State var ptcPosgrado: Int
    @State var perfilDeseable: Int
    @State var snic: Int
    @State var sni1: Int
    @State var sni2: Int
    @State var sni3: Int
    @State var totalSniVigente: Int
    @State var porcentajeGrafica: Double
    
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
                                NavigationLink(destination: DetalleItemPorcentajeProfesoresTiempoCompletoIESReconocimiento(titulo: key, cicloMatricula: cicloMatricula, totalPtc: totalPtc, ptcLicenciatura: ptcLicenciatura, ptcMaestria: ptcMaestria, ptcDoctorado: ptcDoctorado, ptcPosgrado: ptcPosgrado, perfilDeseable: perfilDeseable, snic: snic, sni1: sni1, sni2: sni2, sni3: sni3, totalSniVigente: totalSniVigente, porcentajeGrafica: porcentajeGrafica, graficasPorcentajeProfesoresTiempoCompletoIESReconocimiento: mouloViewModel.graficasPorcentajeProfesoresTiempoCompletoIESReconocimiento)){
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
