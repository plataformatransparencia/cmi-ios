import SwiftUI

struct DetalleItemMontoPromedioRecursosRadicadosInstituciones: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
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
    @State var graficasMontoPromedioRecursosRadicadosInstituciones : [String]
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
                            case "Monto promedio por instituciones":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto Federal")
                                        .font(.headline.bold())
                                    Text("\(montoFederal)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto Estatal")
                                        .font(.headline.bold())
                                    Text("\(montoEstatal)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto Público")
                                        .font(.headline.bold())
                                    Text("\(montoPublico)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Aportación Federal")
                                        .font(.headline.bold())
                                    Text("\(aportFed)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Aportación Estatal")
                                        .font(.headline.bold())
                                    Text("\(aportEst)")
                                        .font(.body)
                                }
                                
                                
                                VStack(alignment: .leading,spacing: 10){
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: true){
                                            !(graficasMontoPromedioRecursosRadicadosInstituciones[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasMontoPromedioRecursosRadicadosInstituciones[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
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

