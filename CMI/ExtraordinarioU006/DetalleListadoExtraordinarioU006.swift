import SwiftUI

struct DetalleListadoExtraordinarioU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    // RecEx
    @State var montoFederalRecExt : Double
    @State var instrumentoRecExt: String
    @State var fechaExt: String
    @State var estatusRecRxt: String
    // Regreso a clases
    @State var montoRegresoClases: Double
    @State var instrumentoRegresoClases: String
    @State var estatusRegresoClases: String
    @State var fechaFirmaConvenioRegresoClases: String
    //Inclusion a estancias
    @State var montoInclusionEstancias: Double
    @State var instrumentoInclusionEstancias: String
    @State var estatusInclusionEstancias: String
    @State var fechaFirmaConvenioInclusionEstancias: String
    // Incremento Salarial
    @State var instrumentoIncrementoSalarial: String
    @State var estatusIncrementoSalarial: String
    @State var informacionIncrementoSalarial: String
    @State var montoFederalIncrementoSalarial: Double
    @State var clcIncrementoSalarial: Double
    @State var montoEstatalIncSalU006: Double
    @State var montoPublicoIncSalU006: Double
    // Deficit u006
    @State var deficit: Double
    @State var instrumentoDeficit: String
    @State var estatusDeficit: String
    @State var fechaFirmaConvenioDeficitU006: String
    @State var montoEstatalDeficitU006: Double
    @State var montoPublicoDeficitU006: Double
    
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
                                NavigationLink(destination: DetalleItemExtraordinarioU006(titulo: key, items: items, montoFederalRecExt: montoFederalRecExt, instrumentoRecExt: instrumentoRecExt, fechaExt: fechaExt, estatusRecRxt: estatusRecRxt, montoRegresoClases: montoRegresoClases, instrumentoRegresoClases: instrumentoRegresoClases, estatusRegresoClases: estatusRegresoClases, fechaFirmaConvenioRegresoClases: fechaFirmaConvenioRegresoClases, montoInclusionEstancias: montoInclusionEstancias, instrumentoInclusionEstancias: instrumentoInclusionEstancias, estatusInclusionEstancias: estatusInclusionEstancias, fechaFirmaConvenioInclusionEstancias: fechaFirmaConvenioInclusionEstancias, instrumentoIncrementoSalarial: instrumentoIncrementoSalarial, estatusIncrementoSalarial: estatusIncrementoSalarial, informacionIncrementoSalarial: informacionIncrementoSalarial, montoFederalIncrementoSalarial: montoFederalIncrementoSalarial, clcIncrementoSalarial: clcIncrementoSalarial, montoEstatalIncSalU006: montoEstatalIncSalU006, montoPublicoIncSalU006: montoPublicoIncSalU006 ,deficit: deficit, instrumentoDeficit: instrumentoDeficit, estatusDeficit: estatusDeficit, fechaFirmaConvenioDeficitU006: fechaFirmaConvenioDeficitU006, montoEstatalDeficitU006: montoEstatalDeficitU006, montoPublicoDeficitU006: montoPublicoDeficitU006, graficasExtraordinarioU006: mouloViewModel.graficasExtraordinarioU006)){
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
