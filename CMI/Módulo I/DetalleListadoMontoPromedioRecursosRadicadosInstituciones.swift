import SwiftUI

struct DetalleListadoMontoPromedioRecursosRadicadosInstituciones: View {
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
    @State var montoEstatal: String
    @State var montoFederal: String
    @State var montoPublico: String
    @State var aportEst: String
    @State var aportFed: String
    @State var aportEstatal: Double
    @State var aportFederal: Double
    
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
                                NavigationLink(destination: DetalleItemMontoPromedioRecursosRadicadosInstituciones(titulo: key, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad, montoEstatal: montoEstatal, montoFederal: montoFederal, montoPublico: montoPublico, aportEst: aportEst, aportFed: aportFed, aportEstatal: aportEstatal, aportFederal: aportFederal, graficasMontoPromedioRecursosRadicadosInstituciones: mouloViewModel.graficasMontoPromedioRecursosRadicadosInstituciones)){
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

