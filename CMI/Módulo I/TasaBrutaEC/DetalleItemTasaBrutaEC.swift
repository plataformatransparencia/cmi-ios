import SwiftUI

struct DetalleItemTasaBrutaEC: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    var contribucion: Double
    var contribucionHombres: Double
    var contribucionMujeres: Double
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
                            case "Total":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Contribución de las Instituciones de los Subsistemas de la DGESUI al Programa Sectorial de Educación 2020-2024")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.contribucion)) %")
                                        .font(.body)
                                }
                                
                            case "Mujeres":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Contribución de las Instituciones de los Subsistemas de la DGESUI al Programa Sectorial de Educación 2020-2024")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.contribucionMujeres)) %")
                                        .font(.body)
                                }
                                
                            case "Hombres":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Contribución de las Instituciones de los Subsistemas de la DGESUI al Programa Sectorial de Educación 2020-2024")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.contribucionHombres)) %")
                                        .font(.body)
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
