import SwiftUI

struct DetalleListadoSubsistemaListadoPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadas: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject var mouloViewModel = ModuloViewModel()
    @State var titulo: String
    @State var totalOtorgado: String
    @State var totalSolicitado: String
    @State var totalPorcentaje: String
    @State var token: String
    @State var path: String
    @State var periodo: String
    @State var entidadFederativa: String
    @State var subsistema: String
    @State var universidad: String
    @State var fuentes: [FuentesModII]
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
                                    Text("Otorgado")
                                        .font(.headline.bold())
                                    Text(totalOtorgado)
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Solicitado")
                                        .font(.headline.bold())
                                    Text(totalSolicitado)
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Porcentaje de Solicitudes de Apoyos para Estudios de Posgrado Aprobadas")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentajeString(monto: totalPorcentaje))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: true){
                                            !(mouloViewModel.graficasPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadasSubsistema[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: mouloViewModel.graficasPorcentajeSolicitudesApoyosEstudiosPosgradoAprobadasSubsistema[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                        }
                                    }.padding(.bottom)
                                }
                            }.padding()
                                .foregroundColor(Color("gris_2"))
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Fuente")
                                        .font(.headline.bold())
                                    Spacer()
                                }.padding(.bottom)
                                ForEach(fuentes, id:\.fuente) { f in
                                    LabelAlignment(text: f.fuente, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                            .padding(.bottom)
                                }
                            }
                            
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
