import SwiftUI

struct DetalleItemMontoPromedioRecursosRadicadosAlumnos: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var montoEstatal: String
    @State var montoFederal: String
    @State var montoPublico: String
    @State var aportEst: String
    @State var aportFed: String
    @State var matriculaSuperior: Int
    @State var matriculaMediaSuperior: Int
    @State var matriculaTotal: Int
    @State var matriculaPond: Int
    @State var subFedAlum: String
    @State var subEstAlum: String
    @State var subsTotAlum: String
    @State var montPubAlum: String
    @State var porcentaje: Double
    @State var graficasMontoPromedioRecursosRadicadosAlumnos : [String]
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
                            case "Monto Promedio por Alumno":
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
                                    Text("Matrícula ESU")
                                        .font(.headline.bold())
                                    Text("\(matriculaSuperior)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Media Superior")
                                        .font(.headline.bold())
                                    Text("\(matriculaMediaSuperior)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Total")
                                        .font(.headline.bold())
                                    Text("\(matriculaTotal)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Ponderada")
                                        .font(.headline.bold())
                                    Text("\(matriculaPond)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Subsidio Federal por Alumno")
                                        .font(.headline.bold())
                                    Text("\(subFedAlum)")
                                        .font(.body)
                                    Text("Subsidio Estatal Por Alumno")
                                        .font(.headline.bold())
                                    Text("\(subEstAlum)")
                                        .font(.body)
                                    
                                    Text("Subsidio por Alumno")
                                        .font(.headline.bold())
                                    Text("\(subsTotAlum)")
                                        .font(.body)
                                    
                                    Text("Porcentaje del Monto Público que se Asigna a cada Alumno")
                                        .font(.headline.bold())
                                    Text("\(porcentaje) %")
                                        .font(.body)
                                    
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: true){
                                            !(graficasMontoPromedioRecursosRadicadosAlumnos[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasMontoPromedioRecursosRadicadosAlumnos[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
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
