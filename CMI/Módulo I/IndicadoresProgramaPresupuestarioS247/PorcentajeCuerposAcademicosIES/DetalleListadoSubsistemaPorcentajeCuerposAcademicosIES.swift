import SwiftUI

struct DetalleListadoSubsistemaPorcentajeCuerposAcademicosIES: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject var mouloViewModel = ModuloViewModel()
    @State var titulo: String
    @State var totalEvaluados: Int
    @State var totalSubenGrado : Int
    @State var totalPorcentaje: Double
    @State var token: String
    @State var path: String
    @State var periodo: String
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
                            VStack(alignment: .leading, spacing: 15){
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Evaluados")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalEvaluados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Suben de Grado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalSubenGrado)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Porcentaje de Cuerpos Académicos en las IES que Cambian a un Grado de Consolidación Superior por Año")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: totalPorcentaje)) %")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: true){
                                            !(mouloViewModel.graficasPorcentajeCuerposAcademicosIESSubistema[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: mouloViewModel.graficasPorcentajeCuerposAcademicosIESSubistema[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                        }
                                    }.padding(.bottom)
                                }
                            }.padding()
                                .foregroundColor(Color("gris_2"))
                        }
                        
                    }.padding(.bottom)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }.onAppear{
            self.mouloViewModel.loadGraficasModII(token: self.token, path: path, anio: periodo, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
        }
        .navigationBarHidden(true)
    }
}
