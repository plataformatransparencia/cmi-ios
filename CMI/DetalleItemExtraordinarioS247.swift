import SwiftUI

struct DetalleItemExtraordinarioS247: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var instrumento : String
    @State var estatusConvenio : String
    @State var fechaProdep : String
    @State var montoFederalProdep : Double
    @State var graficaExtraordinarioS247 : [String]
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
                            case "PRODEP S247":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Instrumento")
                                        .font(.headline.bold())
                                    Text("\(self.instrumento)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estatus")
                                        .font(.headline.bold())
                                    Text("\(self.estatusConvenio)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Fecha")
                                        .font(.headline.bold())
                                    Text("\(self.fechaProdep)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Monto Federal")
                                        .font(.headline.bold())
                                    Text("$" + formatResultPIB(basedOn: String(self.montoFederalProdep)))
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficaExtraordinarioS247[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficaExtraordinarioS247[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
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
