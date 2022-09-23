import SwiftUI

struct DetalleItemPorcentajeAbsocionAlumnosEgresados: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
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
    @State var graficasPorcentajeAbsocionAlumnosEgresados : [String]
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
                            case "Índice Absorción":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total EMS egresados y público particular")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalEmsEgresadosPublicoParticular)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.emsEgresadosPublico)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público federal)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoFederal)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público estatal)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoEstatal)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público autónomo)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoAutonomo)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (particular)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoParticular)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Primer Ingreso Público y Particular")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalPrimerIngresoPublicoParticular)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Primer Ingreso (Público) (TSU y Lic)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.primerIngresoPublicoTSULIC)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Primer Ingreso (Paticular) (TSU y Lic)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.primerIngresoParticularTSULIC)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Índice de Absorción (%)")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: Double(totalIndiceAbsorcion) )) %")
                                        .font(.body)
                                    
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: true){
                                            !(graficasPorcentajeAbsocionAlumnosEgresados[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasPorcentajeAbsocionAlumnosEgresados[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                        }
                                    }.padding(.bottom)
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

