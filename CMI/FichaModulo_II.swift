import SwiftUI

struct FichaModulo_II: View {
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
                        
                        
                        if fichaViewModel.isTrue{
                            ProgressView()
                        }else{
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
                                        LabelAlignment(text: fichaViewModel.nombreIndicadorModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        Spacer()
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("Código del indicador")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    HStack{
                                        LabelAlignment(text: fichaViewModel.codigoIndicadorModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        Spacer()
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("Clasificación MIR")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    HStack{
                                        LabelAlignment(text: fichaViewModel.clasificacionModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
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
                                        LabelAlignment(text: fichaViewModel.definicionModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        Spacer()
                                    }
                                }
                                
                                VStack{
                                    HStack{
                                        Text("Fuente")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    ForEach(fichaViewModel.fuentesModII, id:\.fuente){ v in
                                        HStack{
                                            LabelAlignment(text: v.fuente, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                            Spacer()
                                        }
                                    }
                                    
                                }
                                VStack{
                                    HStack{
                                        Text("Niveles de desagregación")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    HStack{
                                        LabelAlignment(text: fichaViewModel.nivelDesagregacionModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
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
                                        LabelAlignment(text: fichaViewModel.unidadMedidaModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
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
                                        LabelAlignment(text: fichaViewModel.tendenciaEsperadaModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
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
                                        Text(fichaViewModel.periodicidadModII)
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
                                        LabelAlignment(text: fichaViewModel.metodoCalculoModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
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
                                        LabelAlignment(text: fichaViewModel.observacionesModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        Spacer()
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("Componente Sistémico")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    VStack(alignment: .leading){
                                        ForEach(fichaViewModel.componenteSistemicoModII, id:\.contexto){v in
                                            HStack{
                                                LabelAlignment(text: "contexto".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.contexto, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                            }
                                            HStack{
                                                LabelAlignment(text: "insumos/recursos".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.insumos, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            HStack{
                                                LabelAlignment(text: "procesos".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.procesos, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            HStack{
                                                LabelAlignment(text: "resultados".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.resultados, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            
                                        }
                                    }.padding(.trailing)
                                    
                                    HStack{
                                        Text("Dimensión de calidad educativa")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    VStack{
                                        ForEach(fichaViewModel.dimensionCalidadEducativaModII, id:\.obligatoriedad){v in
                                            HStack{
                                                LabelAlignment(text: "obligatoriedad".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.obligatoriedad, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            HStack{
                                                LabelAlignment(text: "gratuidad".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.gratuidad, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            HStack{
                                                LabelAlignment(text: "equidad".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.equidad, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            HStack{
                                                LabelAlignment(text: "inclusion".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.inclusion, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            HStack{
                                                LabelAlignment(text: "pertinencia".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.pertinencia, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            HStack{
                                                LabelAlignment(text: "relevancia".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.relevancia, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            HStack{
                                                LabelAlignment(text: "eficacia".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.eficacia, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            HStack{
                                                LabelAlignment(text: "suficiencia".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.suficiencia, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            HStack{
                                                LabelAlignment(text: "eficiencia".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.eficiencia, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                            HStack{
                                                LabelAlignment(text: "impacto".capitalized, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                Spacer()
                                                LabelAlignment(text: v.impacto, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                                
                                            }
                                        }
                                    }.padding(.trailing)
                                }
                            }.padding([.leading, .trailing])
                            Text("Aplicación del método de cálculo del indicador para la obtención del valor de la línea base")
                                .font(.title3.bold())
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            VStack{
                                HStack{
                                    Text("Nombre variable 1")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.nombreVariable1ModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                                
                                HStack{
                                    Text("Fuente de información variable 1")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.fuenteInfoVariable1ModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }.padding()
                            VStack{
                                HStack{
                                    Text("Nombre variable 2")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.nombreVariable2ModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                                
                                HStack{
                                    Text("Fuente de información variable 2")
                                        .font(.body.bold())
                                    Spacer()
                                }
                                HStack{
                                    LabelAlignment(text: fichaViewModel.fuenteInfoVariable2ModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    Spacer()
                                }
                            }.padding()
                            VStack(alignment: .leading,spacing: 15){
                                Text("Valor de línea base y metas")
                                    .font(.title3.bold())
                                    .multilineTextAlignment(.center)
                                    .padding()
                                VStack{
                                    HStack{
                                        Text("Valor")
                                            .padding(.leading)
                                        Spacer()
                                        Text("Año")
                                            .padding(.trailing)
                                    }.font(.body.bold())
                                    HStack{
                                        Text(fichaViewModel.lineaBaseValorModII)
                                            .font(.body)
                                            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                            .multilineTextAlignment(.leading)
                                            .padding(.leading)
                                        Spacer()
                                        Text(fichaViewModel.lineaBaseAnioModII)
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
                                        LabelAlignment(text: fichaViewModel.lineaBaseNotaModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                    }
                                }
                                
                                VStack{
                                    HStack{
                                        Text("META 2024")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    HStack{
                                        LabelAlignment(text: fichaViewModel.meta2024ModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
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
                                        LabelAlignment(text: fichaViewModel.meta2024NotaModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        Spacer()
                                    }
                                }
                                
                            }.padding()
                            VStack(alignment: .leading,spacing: 15){
                                Text("Metas Intermedias")
                                    .font(.title3.bold())
                                    .multilineTextAlignment(.center)
                                    .padding()
                                
                                VStack{
                                    HStack{
                                        Text("2020")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    HStack{
                                        LabelAlignment(text: fichaViewModel.metaIntermedia2020ModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        Spacer()
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("2021")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    HStack{
                                        LabelAlignment(text: fichaViewModel.metaIntermedia2021ModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        Spacer()
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("2022")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    HStack{
                                        LabelAlignment(text: fichaViewModel.metaIntermedia2022ModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        Spacer()
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("2023")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    HStack{
                                        LabelAlignment(text: fichaViewModel.metaIntermedia2023ModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        Spacer()
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("2024")
                                            .font(.body.bold())
                                        Spacer()
                                    }
                                    HStack{
                                        LabelAlignment(text: fichaViewModel.metaIntermedia2024ModII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        Spacer()
                                    }
                                }
                            }.padding()
                        }
                        
                        
                        
                    }.foregroundColor(Color("gris_2"))
                    
                    
                }
            }.onAppear{
                self.fichaViewModel.loadInfoFichaModII(token: token, path: path)
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

