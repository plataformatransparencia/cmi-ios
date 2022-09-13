import SwiftUI

struct DetalleItemTasaBrutaEES: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var matriculaTotal: Int
    @State var censoTotal: Int
    @State var tasaEscolarizacion: Double
    
    @State var matriculaMuj: Int
    @State var censoMuj: Int
    @State var tasaMujeres: Double
    
    @State var matriculaHom: Int
    @State var censoHom: Int
    @State var tasaHombres: Double
    
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
                                    Text("Matrícula Total (incluye TSU, Lic de escolarizado y no escolarizado)")
                                        .font(.headline.bold())
                                    Text(formatResultPIB(basedOn: String(self.matriculaTotal)))
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Población Total 18 a 22 años")
                                        .font(.headline.bold())
                                    Text("\(formatResultPIB(basedOn: String(self.censoTotal)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Tasa Bruta de Escolarización (Cobertura) de la Población Total")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.tasaEscolarizacion))")
                                        .font(.body)
                                }
                                
                            case "Mujeres":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula de Mujeres (incluye TSU, Lic de escolarizado y no escolarizado)")
                                        .font(.headline.bold())
                                    Text(formatResultPIB(basedOn: String(self.matriculaMuj)))
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres 18 a 22 años")
                                        .font(.headline.bold())
                                    Text("\(formatResultPIB(basedOn: String(self.censoMuj)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Tasa Bruta de Escolarización de la Población de Mujeres")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.tasaMujeres)) %")
                                        .font(.body)
                                }
                                
                            case "Hombres":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula de Hombres (incluye TSU, Lic de escolarizado y no escolarizado)")
                                        .font(.headline.bold())
                                    Text(formatResultPIB(basedOn: String(self.matriculaHom)))
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres 18 a 22 años")
                                        .font(.headline.bold())
                                    Text("\(formatResultPIB(basedOn: String(self.censoHom)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Tasa Bruta de Escolarización de la Población de Hombres")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.tasaHombres)) %")
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
