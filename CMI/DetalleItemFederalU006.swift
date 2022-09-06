import SwiftUI

struct DetalleItemFederalU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var federalU006 : [FederalU006]
    @State var listaCalendarizado : [ListaCalendarizado]
    @State var listaReportado: [ListaReportado]
    @State var listaPlataforma: [ListaPlataforma]
    @State var totalCalendarizado: Double
    @State var totalComprobado: Double
    @State var totalReportado: Double
    @State var graficasFederalU006 : [String]
    var body: some View {
        VStack{
            ZStack{
                ScrollView(showsIndicators: true){
                    VStack(alignment: .leading){
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
                        VStack(alignment: .leading, spacing: 15){
                            switch titulo{
                            case "Calendarizado":
                                ForEach(listaCalendarizado, id:\.mes){ value in
                                    NavigationLink(destination: DetalleMesFederalU006(titulo: value.mes, item: titulo, aportacion: value.aportacion, comprobaciones: value.comprobaciones)){
                                        ItemView(indicador: value.mes)
                                    }
                                }
                                VStack(alignment: .leading,spacing: 15){
                                    Text("Subtotal")
                                        .font(.headline.bold())
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Aportación calendarizada")
                                            .font(.headline.bold())
                                        Text("$" + formatResultPIB(basedOn: String(self.totalCalendarizado)))
                                            .font(.body)
                                    }
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Aportación comprobada CLC")
                                            .font(.headline.bold())
                                        Text("$" + formatResultPIB(basedOn: String(self.totalComprobado)))
                                            .font(.body)
                                    }
                                }.padding()
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasFederalU006[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasFederalU006[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                                
                            case "Reportado por la universidad":
                                ForEach(listaReportado, id:\.mes){ value in
                                    NavigationLink(destination: DetalleMesFederalU006(titulo: value.mes, item: titulo, reportes: value.reportes)){
                                        ItemView(indicador: value.mes)
                                    }
                                }
                                VStack(alignment: .leading,spacing: 15){
                                    Text("Subtotal")
                                        .font(.headline.bold())
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Aportación reportada por la universidad")
                                            .font(.headline.bold())
                                        Text("$" + formatResultPIB(basedOn: String(self.totalReportado)))
                                            .font(.body)
                                    }
                                }.padding()
                                
                            case "Según plataforma":
                                ForEach(listaPlataforma, id:\.mes){ value in
                                    NavigationLink(destination: DetalleMesFederalU006(titulo: value.mes, item: titulo, aportacionSP: value.aportacion ,observacionSP: value.observacion, adeudoMensualSP: value.adeudoMensual)){
                                        ItemView(indicador: value.mes)
                                    }
                                }
                            default:
                                EmptyView()
                            }
                        }.foregroundColor(Color("gris_2"))
                        
                        
                        
                        
                    }.padding(.bottom)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }.navigationBarHidden(true)
    }
}
