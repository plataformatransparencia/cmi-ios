import SwiftUI

struct FichaModulo_I: View {
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
                            self.isPresented.toggle()
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
                                    Text("Nombre del Indicador")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.nombreIndicador, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Codigo del indicador")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.codigoIndicador, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Objetivo Prioritario/Meta")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.objetivoPrioritario, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Definición o Descripción")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.definicionDescripcion, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Fuente")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.fuente, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Niveles de desagregación")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.nivelesDesagregacion, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Contribución de las Instituciones de la DGESUI")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.contribucionInstitucionesDGESUI, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
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
                                    LabelAlignment(text: fichaViewModel.unidadMedida, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Tendencia esperada")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.tendenciaEsperada, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
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
                                    Text(fichaViewModel.periodoRecoleccionDatos)
                                        .font(.body)
                                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                            }
                        }.padding()
                        VStack(alignment: .leading,spacing: 15){
                            VStack{
                                HStack{
                                    Text("Método de cálculo")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.metodoCalculo, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Observaciones")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.observaciones, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Componente Sistémico o Categorías de MIR (fin, propósito, actividad)")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    Text(fichaViewModel.componenteSistemico)
                                        .font(.body)
                                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Dimensión de calidad educativa")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.dimensionCalidadEducativa, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                }
                            }
                        }.padding()
                        
                        
                        Text("Aplicación del método de cálculo del indicador para la obtención del valor de la línea base")
                            .font(.title3.bold())
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        VStack(alignment: .leading,spacing: 15){
                            ForEach(self.fichaViewModel.variables, id:\.id){i in
                                VStack{
                                    HStack{
                                        Text("Nombre de variable")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    HStack{
                                        LabelAlignment(text: i.nombre, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
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
                                        LabelAlignment(text: i.fuente.valor, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        Spacer()
                                    }
                                }
                            }
                            
                        }.padding()
                        
                        
                        Text("Valor de línea base y metas")
                            .font(.title3.bold())
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        VStack(alignment: .leading,spacing: 15){
                            VStack{
                                HStack{
                                    Text("Valor")
                                        .padding(.leading)
                                    Spacer()
                                    Text("Año")
                                        .padding(.trailing)
                                }.font(.body.bold())
                                HStack{
                                    Text(fichaViewModel.valorLB)
                                        .font(.body)
                                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                        .multilineTextAlignment(.leading)
                                        .padding(.leading)
                                    Spacer()
                                    Text(fichaViewModel.anioLB)
                                        .font(.body)
                                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                        .multilineTextAlignment(.leading)
                                        .padding(.trailing)
                                }
                            }
                            VStack{
                                HStack{
                                    Text("Nota sobre línea base")
                                }.font(.body.bold())
                                HStack{
                                    LabelAlignment(text: fichaViewModel.notasLB, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                }
                            }
                            
                            VStack{
                                HStack{
                                    Text("META 2024")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.valorMetas, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }
                            
                            VStack{
                                HStack{
                                    Text("Nota sobre la meta 2024")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.notasMetas, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                }
                            }
                            
                        }.padding()
                        
                        
                    }.foregroundColor(Color("gris_2"))
                    
                    
                }
            }.onAppear{
                self.fichaViewModel.loadInfoFicha(token: token, path: path)
            }
            
        }.navigationBarHidden(true)
            .sheet(isPresented: $isPresented, content: {
                VStack {
                    WebView(token: self.token, path: self.path)
                    HStack{
                        Spacer()
                        Button(action: {
                            self.isPresented.toggle()
                        }, label: {
                            Text("Listo")
                                .font(.headline.bold())
                                .padding([.trailing])
                        })
                    }.foregroundColor(.blue)
                        
                }
            })
    }
}



