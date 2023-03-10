import SwiftUI

struct DetalleItemPorcentajeCuerposAcademicosConsolidados: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var cicloMatricula: String
    
    @State var caefCienciasAgropecuarias: Int
    @State var caefCienciasSocialesAdministrativas: Int
    @State var caefCienciasSalud: Int
    @State var caefCienciasIngenieriaTecnologia: Int
    @State var caefCienciasNaturalezExactas: Int
    @State var caefCienciasEducacionHumanidadesArte: Int
    
    @State var caecCienciasAgropecuarias: Int
    @State var caecCienciasSocialesAdministrativas: Int
    @State var caecCienciasSalud: Int
    @State var caecCienciasIngenieriaTecnologia: Int
    @State var caecCienciasNaturalezExactas: Int
    @State var caecCienciasEducacionHumanidadesArte: Int
    
    @State var cacCienciasAgropecuarias: Int
    @State var cacCienciasSocialesAdministrativas: Int
    @State var cacCienciasSalud: Int
    @State var cacCienciasIngenieriaTecnologia: Int
    @State var cacCienciasNaturalezExactas: Int
    @State var cacCienciasEducacionHumanidadesArte: Int
    
    @State var totalCaef: Int
    @State var totalCaec: Int
    @State var totalCac: Int
    @State var totalCa: Int
    
    @State var porCaefCienciasAgropecuarias: String
    @State var porCaefCienciasSocialesAdministrativas: String
    @State var porCaefCienciasSalud: String
    @State var porCaefCienciasIngenieriaTecnologia: String
    @State var porCaefCienciasNaturalezExactas: String
    @State var porCaefCienciasEducacionHumanidadesArte: String
    @State var porCaefTotalCaef: String
    
    @State var porCaecCienciasAgropecuarias: String
    @State var porCaecCienciasSocialesAdministrativas: String
    @State var porCaecCienciasSalud: String
    @State var porCaecCienciasIngenieriaTecnologia: String
    @State var porCaecCienciasNaturalezExactas: String
    @State var porCaecCienciasEducacionHumanidadesArte: String
    @State var porCaecTotalCaec: String
    
    @State var porCacCienciasAgropecuarias: String
    @State var porCacCienciasSocialesAdministrativas: String
    @State var porCacCienciasSalud: String
    @State var porCacCienciasIngenieriaTecnologia: String
    @State var porCacCienciasNaturalezExactas: String
    @State var porCacCienciasEducacionHumanidadesArte: String
    @State var porCacTotalCac: String
    @State var fuentes: [FuentesModII]
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
                            case "Desglose Cuerpos Acad??micos en Formaci??n (CAEF)":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo para Datos de Matr??cula")
                                        .font(.headline.bold())
                                    Text("\(cicloMatricula)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Agropecuarias")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caefCienciasAgropecuarias)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Sociales Y Administrativas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caefCienciasSocialesAdministrativas)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias de la Salud")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caefCienciasSalud)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Ingenier??a Y Tecnolog??a")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caefCienciasIngenieriaTecnologia)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Naturalez Y Exactas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caefCienciasNaturalezExactas)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Educaci??n, Humanidades Y Arte")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caefCienciasEducacionHumanidadesArte)))")
                                        .font(.body)
                                }
                                
                            case "Desglose Cuerpos Acad??micos en Consolidaci??n (CAEC)":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo para Datos de Matr??cula")
                                        .font(.headline.bold())
                                    Text("\(cicloMatricula)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Agropecuarias")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caecCienciasAgropecuarias)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Sociales Y Administrativas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caecCienciasSocialesAdministrativas)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias de la Salud")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caecCienciasSalud)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Ingenier??a Y Tecnolog??a")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caecCienciasIngenieriaTecnologia)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Naturalez Y Exactas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caecCienciasNaturalezExactas)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Educaci??n, Humanidades Y Arte")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(caecCienciasEducacionHumanidadesArte)))")
                                        .font(.body)
                                }
                            case "Desglose Cuerpos Acad??micos Consolidados (CAC)":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo para Datos de Matr??cula")
                                        .font(.headline.bold())
                                    Text("\(cicloMatricula)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Agropecuarias")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(cacCienciasAgropecuarias)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Sociales Y Administrativas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(cacCienciasSocialesAdministrativas)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias de la Salud")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(cacCienciasSalud)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Ingenier??a Y Tecnolog??a")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(cacCienciasIngenieriaTecnologia)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Naturalez Y Exactas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(cacCienciasNaturalezExactas)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciencias Educaci??n, Humanidades Y Arte")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(cacCienciasEducacionHumanidadesArte)))")
                                        .font(.body)
                                }
                            case "Cuerpos Acad??micos (CA)":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo para Datos de Matr??cula")
                                        .font(.headline.bold())
                                    Text("\(cicloMatricula)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total CAEF")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalCaef)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total CAEC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalCaec)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total CAC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalCac)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total CA")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(totalCa)))")
                                        .font(.body)
                                }
                            case "%CAEF/CA":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo para Datos de Matr??cula")
                                        .font(.headline.bold())
                                    Text("\(cicloMatricula)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Agropecuarias CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaefCienciasAgropecuarias)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Sociales Y Administrativas CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaefCienciasSocialesAdministrativas)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias de la Salud CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaefCienciasSalud)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Ingenier??a Y Tecnolog??a CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaefCienciasIngenieriaTecnologia)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Naturalez Y Exactas CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaefCienciasNaturalezExactas)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Educaci??n, Humanidades Y Arte CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaefCienciasEducacionHumanidadesArte)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Total CAEF/ Total CA")
                                        .font(.headline.bold())
                                    Text("\(porCaefTotalCaef)")
                                        .font(.body)
                                }
                            case "%CAEC/CA":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo para Datos de Matr??cula")
                                        .font(.headline.bold())
                                    Text("\(cicloMatricula)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Agropecuarias CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaecCienciasAgropecuarias)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Sociales Y Administrativas CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaecCienciasSocialesAdministrativas)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias de la Salud CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaecCienciasSalud)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Ingenier??a Y Tecnolog??a CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaecCienciasIngenieriaTecnologia)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Naturalez Y Exactas CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaecCienciasNaturalezExactas)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Educaci??n, Humanidades Y Arte CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCaecCienciasEducacionHumanidadesArte)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Total CAEF/ Total CA")
                                        .font(.headline.bold())
                                    Text("\(porCaecTotalCaec)")
                                        .font(.body)
                                }
                            case "%CAC/CA":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo para Datos de Matr??cula")
                                        .font(.headline.bold())
                                    Text("\(cicloMatricula)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Agropecuarias CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCacCienciasAgropecuarias)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Sociales Y Administrativas CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCacCienciasSocialesAdministrativas)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias de la Salud CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCacCienciasSalud)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Ingenier??a Y Tecnolog??a CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCacCienciasIngenieriaTecnologia)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Naturalez Y Exactas CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCacCienciasNaturalezExactas)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Ciencias Educaci??n, Humanidades Y Arte CAEF/CA")
                                        .font(.headline.bold())
                                    Text("\(porCacCienciasEducacionHumanidadesArte)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Total CAEF/ Total CA")
                                        .font(.headline.bold())
                                    Text("\(porCacTotalCac)")
                                        .font(.body)
                                }
                            default:
                                EmptyView()
                            }
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
