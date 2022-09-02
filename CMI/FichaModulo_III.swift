import SwiftUI

struct FichaModulo_III: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var fichaViewModel : FichaViewModel
    var titulo: String
    var lista = [ElementosFichas]()
    var path : String
    var token : String
    @State var isPresented = false
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
                            
                        }.padding([.horizontal, .top])
                        
                        Button(action: {
                            print("descarga de PDF")
                        }){
                            Image("Image_PDF")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }.padding(.horizontal)
                        
                        Text("Elementos del indicador o parámetro")
                            .font(.title3.bold())
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        
                        VStack(alignment: .leading,spacing: 15){
                            VStack{
                                HStack{
                                    Text("Nombre de la categoria")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.nombreCategoriaModIII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Código de categoria")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.codigoModIII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Definición o Descripción")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.definicionDescripcionModIII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            
                            VStack{
                                HStack{
                                    Text("Fuente")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.fuenteModIII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Niveles de desagregación")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.valorNivelesDesagregacionModIII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Unidad de medida")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.valorUnidadMedidaModIII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Periodicidad o frecuencia de medición")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    Text(fichaViewModel.periodoModIII)
                                        .font(.body)
                                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                            }
                            
                            VStack{
                                HStack{
                                    Text("Unidad responsable de reportar el avance")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.valorUidadesResponsableModIII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            
                            VStack{
                                HStack{
                                    Text("Observaciones")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.observacionesModIII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Componente Sistémico")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.componenteSistemicoModIII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                                
                                HStack{
                                    Text("Dimensión de calidad educativa")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.dimensionCalidadEducativaModIII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            
                            
                        }.padding()
                    }.foregroundColor(Color("gris_2"))
                    
                    
                }
            }.onAppear{
                self.fichaViewModel.loadInfoFichaModIII(token: token, path: path)
            }
            
        }.navigationBarHidden(true)
    }
}
