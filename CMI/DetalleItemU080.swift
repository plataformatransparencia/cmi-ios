import SwiftUI

struct DetalleItemU080: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var instrumento: String
    @State var estatusConvenio: String
    @State var fechaFormalizacion: String
    @State var recursosAsignados: Double
    @State var observacionEspecifica: String
    @State var graficasU080 : [String]
    @State var fuentes: String
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

                            case "Recursos asignados":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Instrumento")
                                        .font(.headline.bold())
                                    Text("\(self.instrumento)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estatus de Convenio")
                                        .font(.headline.bold())
                                    Text("\(self.estatusConvenio)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Fecha de Formalización")
                                        .font(.headline.bold())
                                    Text("\(self.fechaFormalizacion)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Recursos Asignados")
                                        .font(.headline.bold())
                                    Text("\(formatResultPIB(basedOn: String(self.recursosAsignados)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Observación Específica")
                                        .font(.headline.bold())
                                    Text("\(self.observacionEspecifica)")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasU080[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasU080[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                            default:
                                EmptyView()
                            }
                        }.padding()
                            .foregroundColor(Color("gris_2"))
                        VStack(alignment: .leading){
                            HStack{
                                Text("Fuente")
                                    .font(.headline.bold())
                                Spacer()
                            }.padding(.bottom)
                            
                            LabelAlignment(text: fuentes, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                            .padding(.bottom)
                            
                        }
                        
                    }.padding(.bottom)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }.navigationBarHidden(true)
    }
}

