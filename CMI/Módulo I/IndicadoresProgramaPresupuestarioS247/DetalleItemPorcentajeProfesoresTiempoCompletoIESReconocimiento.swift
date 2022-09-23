import SwiftUI

struct DetalleItemPorcentajeProfesoresTiempoCompletoIESReconocimiento: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var cicloMatricula: String
    @State var totalPtc: Int
    @State var ptcLicenciatura: Int
    @State var ptcMaestria: Int
    @State var ptcDoctorado: Int
    @State var ptcPosgrado: Int
    @State var perfilDeseable: Int
    @State var snic: Int
    @State var sni1: Int
    @State var sni2: Int
    @State var sni3: Int
    @State var totalSniVigente: Int
    @State var porcentajeGrafica: Double
    @State var graficasPorcentajeProfesoresTiempoCompletoIESReconocimiento : [String]
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
                            case "Desglose Profesores de Tiempo Completo (PTC)":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo para Datos de Matrícula")
                                        .font(.headline.bold())
                                    Text("\(cicloMatricula)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de PTC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalPtc)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(ptcLicenciatura)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC con Maestría")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(ptcMaestria)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC con Doctorado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(ptcDoctorado)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC con Posgrado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(ptcPosgrado)))")
                                        .font(.body)
                                }
                               
                                
                            case "Desglose Profesores Perfil Deseable Vigente y SNI":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo para Datos de Matrícula")
                                        .font(.headline.bold())
                                    Text("\(cicloMatricula)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de PTC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(perfilDeseable)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.C")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(snic)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.C.1")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sni1)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.C.2")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sni2)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.C.3")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sni3)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total SNI Vigente**")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalSniVigente)))")
                                        .font(.body)
                                }
                            case "Porcentaje PTC con Perfil Deseable":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo para Datos de Matrícula")
                                        .font(.headline.bold())
                                    Text("\(cicloMatricula)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC con Perfil Deseable(%)")
                                        .font(.headline.bold())
                                    
                                    Text("\(String(format: "%.2f", porcentajeGrafica)) %")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: true){
                                            !(graficasPorcentajeProfesoresTiempoCompletoIESReconocimiento[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasPorcentajeProfesoresTiempoCompletoIESReconocimiento[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
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
