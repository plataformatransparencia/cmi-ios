import SwiftUI

struct DetalleItemUniversidadesCrisis: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var montoPublico: Double
    @State var totalMinistrado: Double
    @State var montoConvenioSEP: Double
    @State var montoMinistradoSEP: Double
    @State var fechaEjecucionSEP: String
    @State var observacionFederal: String
    @State var montoConvenioEstado: Double
    @State var totalMinistradoEstado: Double
    @State var ministraciones : [Ministraciones]
    @State var graficaUniversidadesCrisis : [String]
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
                            case "Monto público":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Recursos Asignados para las Universidades en Crisis")
                                        .font(.headline.bold())
                                    self.montoPublico != 0.0 ? Text("$" + formatResultPIB(basedOn: String(self.montoPublico))) : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estatus de Convenio Universidades en Crisis")
                                        .font(.headline.bold())
                                    Text("Formalizado")
                                        .font(.body)
                                }
                                
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto Ministrado. Universidades en Crisis")
                                        .font(.headline.bold())
                                    Text("$" + formatResultPIB(basedOn: String(self.totalMinistrado)))
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficaUniversidadesCrisis[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficaUniversidadesCrisis[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                            case "Aportación federal":
                               
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto de convenio. Aportación SEP")
                                        .font(.headline.bold())
                                    Text("$" + formatResultPIB(basedOn: String(self.montoConvenioSEP)))
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto ministrado. Aportación SEP")
                                        .font(.headline.bold())
                                    Text("$" + formatResultPIB(basedOn: String(self.montoMinistradoSEP)))
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Fecha de ejecución")
                                        .font(.headline.bold())
                                    Text("\(fechaEjecucionSEP)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Observación")
                                        .font(.headline.bold())
                                    Text("\(observacionFederal)")
                                        .font(.body)
                                }
                                
                                
                            case "Aportación estatal":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto. Aportación estado")
                                        .font(.headline.bold())
                                    Text("$" + formatResultPIB(basedOn: String(self.montoConvenioEstado)))
                                        .font(.body)
                                }
                                
                                ForEach(ministraciones, id:\.monto){n in
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Monto ministrado. Aportación estatal")
                                            .font(.headline.bold())
                                        n.monto != 0.0 ? Text("$" + formatResultPIB(basedOn: String(n.monto))) : Text("")
                                            .font(.body)
                                    }
                                    
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Fecha de ejecución")
                                            .font(.headline.bold())
                                        Text("\(n.fechaEjecucion == "N/A" ? "" : n.fechaEjecucion)")
                                            .font(.body)
                                    }
                                    
                                    VStack(alignment: .leading,spacing: 10){
                                        Text("Observación")
                                            .font(.headline.bold())
                                        Text("\(n.observacion == "N/A" ? "" : n.observacion)")
                                            .font(.body)
                                    }
                                }
                                
                                
                                
                            default:
                                EmptyView()
                            }
                        }.padding()
                            .foregroundColor(Color("gris_2"))
                            
                        
                        
                        
                    }.padding(.bottom)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }.navigationBarHidden(true)
    }
}

