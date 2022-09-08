import SwiftUI

struct DetalleItemIndicadoresEntidad: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var ejercicioFiscal: Int
    @State var cicloDatos: String
    @State var poblacion18A22HombreCobertura: Int
    @State var poblacion18A22MujerCobertura: Int
    @State var poblacion18A22TotalCobertura: Int
    @State var porcentajeCoberturaHombreCobertura: Double
    @State var porcentajeCoberturaMujerCobertura: Double
    @State var tasaBrutaCobertura: Double
    
    @State var poblacion18A22HombreCobertura2013: Int
    @State var poblacion18A22MujerCobertura2013: Int
    @State var poblacion18A22TotalCobertura2013: Int
    @State var tasaBrutaCobertura2013: Double
    
    @State var matriculaLicenciaturaNs: Int
    @State var totalMatriculaTsuLicenciaturaNs: Int
    @State var matriculaTsuLicenciaturaHombresNs: Int
    @State var matriculaTsuLicenciaturaMujeresNs: Int
    
    @State var matriculaEspecialidadNs: Int
    @State var matriculaMaestriaNs: Int
    @State var matriculaDoctoradoNs: Int
    @State var totalMatriculaPosgradoNs: Int
    @State var matriculaPosgradoHombresNs: Int
    @State var matriculaPosgradoMujeresNs: Int
    
    @State var totalEmsEgresadosPublicoParticularNms: Int
    @State var emsEgresadosPublicoNms: Int
    @State var emsEgresadosPublicoFederalNms: Int
    @State var emsEgresadosPublicoEstatalNms: Int
    @State var emsEgresadosPublicoAutonomoNms: Int
    @State var emsEgresadosParticularNms: Int
    @State var totalPrimerIngresoPublicoParticularNms: Int
    @State var primerIngresoPublicoTsuLicNms: Int
    @State var primerIngresoPaticularTsuLicNms: Int
    @State var totalIndiceAbsorcion: Double
    
    @State var numeroIesEstadoPublicasParticularesDies: Int
    @State var upeEstadoDies: Int
    @State var upeasEstadoDies: Int
    @State var uiEstadoDies: Int
    
    @State var matriculaEscolTsuLicPosDesMod: Int
    @State var matriculaNoEscolTsuLicPosDesMod: Int
    @State var matriculaMixtaTsuLicPosDesMod: Int
    
    @State var totalPtc: Int
    @State var conPerfilDeseableVigente: Int
    @State var conSniVigente: Int
    
    @State var matriculaDiscapacidadTsuLicPosDesDiscapacidad: Int
    @State var hombresDesDiscapacidad: Int
    @State var mujeresDesDiscapacidad: Int
    
    @State var matriculaHliTsuLicPosDesHli: Int
    @State var hombresDeshli: Int
    @State var mujeresDeshli: Int
    
    @State var educacionCmpe: Int
    @State var artesHumanidadesCmpe: Int
    @State var cienciasSocialesDerechoCmpe: Int
    @State var administracionNegociosCmpe: Int
    @State var cienciasNaturalesMatematicasStadisticaCmpe: Int
    @State var teconologiasInformacionComunicacionCmpe: Int
    @State var ingenieriaManufacturaConstruccionCmpe: Int
    @State var agronomiaVeterinariaCmpe: Int
    @State var cienciasSaludCmpe: Int
    @State var serviciosCmpe: Int
    @State var totalMatriculaAreasCmpe: Int
    
    @State var matriculaCalidadBc: Int
    @State var matriculaTotalBc: Int
    @State var matriculaEvaluableBc: Int
    @State var porcentajeCoberturaTotalCalidadBc: Double
    @State var porcentajeCoberturaEvaluableBc: Double
    
    @State var upeSubsistema: Int
    @State var upeasSubsistema: Int
    @State var uiSubsistema: Int
    @State var upfSubsistema: Int
    @State var utSubsistema: Int
    @State var upolSubsistema: Int
    @State var institutosTecnologicosSubsistema: Int
    @State var iesEntidadesFederativasSubsistema: Int
    @State var normalesSubsistema: Int
    @State var upnProvinciaSubsistema: Int
    @State var camSubsistema: Int
    @State var particularesSubsistema: Int
    @State var totalSubsistema: Int
    
    @State var graficasIndicadoresEntidad : [String]
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

                            case "Cobertura":
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Población (18-22) (Hombre)")
                                        .font(.headline.bold())
                                    self.poblacion18A22HombreCobertura != 0 ? Text("\(formatResult(basedOn: String(self.poblacion18A22HombreCobertura)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Población (18-22) (Mujer)")
                                        .font(.headline.bold())
                                    self.poblacion18A22MujerCobertura != 0 ? Text("\(formatResult(basedOn: String(self.poblacion18A22MujerCobertura)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Población (18-22) (Total)")
                                        .font(.headline.bold())
                                    self.poblacion18A22TotalCobertura != 0 ? Text("\(formatResult(basedOn: String(self.poblacion18A22TotalCobertura)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Cobertura (Hombre)")
                                        .font(.headline.bold())
                                    self.porcentajeCoberturaHombreCobertura != 0.0 ? Text("\(calcularPorcentaje(monto: self.porcentajeCoberturaHombreCobertura)) %") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Cobertura (Mujer)")
                                        .font(.headline.bold())
                                    self.porcentajeCoberturaMujerCobertura != 0.0 ? Text("\(calcularPorcentaje(monto: self.porcentajeCoberturaMujerCobertura)) %") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Tasa bruta cobertura")
                                        .font(.headline.bold())
                                    self.tasaBrutaCobertura != 0.0 ? Text("\(calcularPorcentaje(monto: self.tasaBrutaCobertura)) %") : Text("")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresEntidad[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresEntidad[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresEntidad[1].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresEntidad[1])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                            case "Cobertura 2012-2013":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Población (18-22) (Hombre)")
                                        .font(.headline.bold())
                                    self.poblacion18A22HombreCobertura2013 != 0 ? Text("\(formatResult(basedOn: String(self.poblacion18A22HombreCobertura2013)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Población (18-22) (Mujer)")
                                        .font(.headline.bold())
                                    self.poblacion18A22MujerCobertura2013 != 0 ? Text("\(formatResult(basedOn: String(self.poblacion18A22MujerCobertura2013)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Población (18-22) (Total)")
                                        .font(.headline.bold())
                                    self.poblacion18A22TotalCobertura2013 != 0 ? Text("\(formatResult(basedOn: String(self.poblacion18A22TotalCobertura2013)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Tasa bruta cobertura")
                                        .font(.headline.bold())
                                    self.tasaBrutaCobertura2013 != 0.0 ? Text("\(calcularPorcentaje(monto: self.tasaBrutaCobertura2013)) %") : Text("")
                                        .font(.body)
                                }
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresEntidad[5].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresEntidad[5])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Matrícula Nivel Superior":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Lic")
                                        .font(.headline.bold())
                                    self.matriculaLicenciaturaNs != 0 ? Text("\(formatResult(basedOn: String(self.matriculaLicenciaturaNs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Total TSU y Lic")
                                        .font(.headline.bold())
                                    self.totalMatriculaTsuLicenciaturaNs != 0 ? Text("\(formatResult(basedOn: String(self.totalMatriculaTsuLicenciaturaNs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula TSU y Lic Hombres")
                                        .font(.headline.bold())
                                    self.matriculaTsuLicenciaturaHombresNs != 0 ? Text("\(formatResult(basedOn: String(self.matriculaTsuLicenciaturaHombresNs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula TSU y Lic Mujeres")
                                        .font(.headline.bold())
                                    self.matriculaTsuLicenciaturaMujeresNs != 0 ? Text("\(formatResult(basedOn: String(self.matriculaTsuLicenciaturaMujeresNs)))") : Text("")
                                        .font(.body)
                                }
                            case "Matrícula Posgrado":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Especialidad")
                                        .font(.headline.bold())
                                    self.matriculaEspecialidadNs != 0 ? Text("\(formatResult(basedOn: String(self.matriculaEspecialidadNs)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Maestría")
                                        .font(.headline.bold())
                                    self.matriculaMaestriaNs != 0 ? Text("\(formatResult(basedOn: String(self.matriculaMaestriaNs)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Doctorado")
                                        .font(.headline.bold())
                                    self.matriculaDoctoradoNs != 0 ? Text("\(formatResult(basedOn: String(self.matriculaDoctoradoNs)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula Posgrado")
                                        .font(.headline.bold())
                                    self.totalMatriculaPosgradoNs != 0 ? Text("\(formatResult(basedOn: String(self.totalMatriculaPosgradoNs)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Posgrado Hombres")
                                        .font(.headline.bold())
                                    self.matriculaPosgradoHombresNs != 0 ? Text("\(formatResult(basedOn: String(self.matriculaPosgradoHombresNs)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Posgrado Mujeres")
                                        .font(.headline.bold())
                                    self.matriculaPosgradoMujeresNs != 0 ? Text("\(formatResult(basedOn: String(self.matriculaPosgradoMujeresNs)))")  : Text("")
                                        .font(.body)
                                }
                            case "Matrícula Nivel Medio Superior":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total EMS Egresados Público y Particular")
                                        .font(.headline.bold())
                                    totalEmsEgresadosPublicoParticularNms != 0 ? Text("\(formatResult(basedOn: String(self.totalEmsEgresadosPublicoParticularNms)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público)")
                                        .font(.headline.bold())
                                    emsEgresadosPublicoNms != 0 ? Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoNms)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público Federal)")
                                        .font(.headline.bold())
                                    emsEgresadosPublicoFederalNms != 0 ? Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoFederalNms)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público Estatal)")
                                        .font(.headline.bold())
                                    emsEgresadosPublicoEstatalNms != 0 ? Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoEstatalNms)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público Autónomo)")
                                        .font(.headline.bold())
                                    emsEgresadosPublicoAutonomoNms != 0 ? Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoAutonomoNms)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Particular)")
                                        .font(.headline.bold())
                                    emsEgresadosParticularNms != 0 ? Text("\(formatResult(basedOn: String(self.emsEgresadosParticularNms)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total 1er Ingreso Público y Particular")
                                        .font(.headline.bold())
                                    totalPrimerIngresoPublicoParticularNms != 0 ? Text("\(formatResult(basedOn: String(self.totalPrimerIngresoPublicoParticularNms)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("1er Ingreso (Público) (TSU y Lic)")
                                        .font(.headline.bold())
                                    primerIngresoPublicoTsuLicNms != 0 ? Text("\(formatResult(basedOn: String(self.primerIngresoPublicoTsuLicNms)))") : Text("")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("1er Ingreso (Particular) (TSU y Lic)")
                                        .font(.headline.bold())
                                    primerIngresoPaticularTsuLicNms != 0 ? Text("\(formatResult(basedOn: String(self.primerIngresoPaticularTsuLicNms)))") : Text("")
                                        .font(.body)
                                    
                                    Text("Total Indice de absorción %")
                                        .font(.headline.bold())
                                    totalIndiceAbsorcion != 0.0 ? Text("\(calcularPorcentaje(monto: self.totalIndiceAbsorcion))") : Text("")
                                        .font(.body)
                                    
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: true){
                                            !(graficasIndicadoresEntidad[2].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresEntidad[2])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                        }
                                    }.padding(.bottom)
                                }
                                
                            case "Desglose IES":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("IES en el Estado Públicas y Particulares")
                                        .font(.headline.bold())
                                    numeroIesEstadoPublicasParticularesDies != 0 ? Text("\(formatResult(basedOn: String(self.numeroIesEstadoPublicasParticularesDies)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UPE en el Estado")
                                        .font(.headline.bold())
                                    upeEstadoDies != 0 ? Text("\(formatResult(basedOn: String(self.upeEstadoDies)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UPEA en el Estado")
                                        .font(.headline.bold())
                                    upeasEstadoDies != 0 ? Text("\(formatResult(basedOn: String(self.upeasEstadoDies)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UI en el Estado")
                                        .font(.headline.bold())
                                    uiEstadoDies != 0 ? Text("\(formatResult(basedOn: String(self.uiEstadoDies)))") : Text("")
                                        .font(.body)
                                }
                            case "Matrícula ES Modalidad":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Escol (TSU, Lic y Pos)")
                                        .font(.headline.bold())
                                    matriculaEscolTsuLicPosDesMod != 0 ? Text("\(formatResult(basedOn: String(self.matriculaEscolTsuLicPosDesMod)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula No Escol (TSU, Lic y Pos)")
                                        .font(.headline.bold())
                                    matriculaNoEscolTsuLicPosDesMod != 0 ? Text("\(formatResult(basedOn: String(self.matriculaNoEscolTsuLicPosDesMod)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Mixta (TSU, Lic y Pos)")
                                        .font(.headline.bold())
                                    matriculaMixtaTsuLicPosDesMod != 0 ? Text("\(formatResult(basedOn: String(self.matriculaMixtaTsuLicPosDesMod)))")  : Text("")
                                        .font(.body)
                                }
                            case "PTC, Perfil Deseable, SNI":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de PTC")
                                        .font(.headline.bold())
                                    totalPtc != 0 ? Text("\(formatResult(basedOn: String(self.totalPtc)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Con Perfil Deseable Vigente")
                                        .font(.headline.bold())
                                    conPerfilDeseableVigente != 0 ? Text("\(formatResult(basedOn: String(self.conPerfilDeseableVigente)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Con SNI Vigente")
                                        .font(.headline.bold())
                                    conSniVigente != 0 ? Text("\(formatResult(basedOn: String(self.conSniVigente)))") : Text("")
                                        .font(.body)
                                }
                            case "Matrícula Discapacidad ES":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula (Discapacidad TSU, Lic y Pos)")
                                        .font(.headline.bold())
                                    matriculaDiscapacidadTsuLicPosDesDiscapacidad != 0 ? Text("\(formatResult(basedOn: String(self.matriculaDiscapacidadTsuLicPosDesDiscapacidad)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    hombresDesDiscapacidad != 0 ? Text("\(formatResult(basedOn: String(self.hombresDesDiscapacidad)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    mujeresDesDiscapacidad != 0 ? Text("\(formatResult(basedOn: String(self.mujeresDesDiscapacidad)))") : Text("")
                                        .font(.body)
                                }
                            case "Matrícula HLI ES":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula HLI TSU, Lic y Pos")
                                        .font(.headline.bold())
                                    matriculaHliTsuLicPosDesHli != 0 ? Text("\(formatResult(basedOn: String(self.matriculaHliTsuLicPosDesHli)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    hombresDeshli != 0 ? Text("\(formatResult(basedOn: String(self.hombresDeshli)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    mujeresDeshli != 0 ? Text("\(formatResult(basedOn: String(self.mujeresDeshli)))") : Text("")
                                        .font(.body)
                                }
                            case "Matrícula por áreas de la CMPE":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("E")
                                        .font(.headline.bold())
                                    educacionCmpe != 0 ? Text("\(formatResult(basedOn: String(self.educacionCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AH")
                                        .font(.headline.bold())
                                    artesHumanidadesCmpe != 0 ? Text("\(formatResult(basedOn: String(self.artesHumanidadesCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CSD")
                                        .font(.headline.bold())
                                    cienciasSocialesDerechoCmpe != 0 ? Text("\(formatResult(basedOn: String(self.cienciasSocialesDerechoCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AN")
                                        .font(.headline.bold())
                                    administracionNegociosCmpe != 0 ? Text("\(formatResult(basedOn: String(self.administracionNegociosCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CNME")
                                        .font(.headline.bold())
                                    cienciasNaturalesMatematicasStadisticaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.cienciasNaturalesMatematicasStadisticaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TIC")
                                        .font(.headline.bold())
                                    teconologiasInformacionComunicacionCmpe != 0 ? Text("\(formatResult(basedOn: String(self.teconologiasInformacionComunicacionCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("IMC")
                                        .font(.headline.bold())
                                    ingenieriaManufacturaConstruccionCmpe != 0 ? Text("\(formatResult(basedOn: String(self.ingenieriaManufacturaConstruccionCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AV")
                                        .font(.headline.bold())
                                    agronomiaVeterinariaCmpe != 0 ? Text("\(formatResult(basedOn: String(self.agronomiaVeterinariaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CS")
                                        .font(.headline.bold())
                                    cienciasSaludCmpe != 0 ? Text("\(formatResult(basedOn: String(self.cienciasSaludCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("Servicios")
                                        .font(.headline.bold())
                                    serviciosCmpe != 0 ? Text("\(formatResult(basedOn: String(self.serviciosCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("Total CMPE")
                                        .font(.headline.bold())
                                    totalMatriculaAreasCmpe != 0 ? Text("\(formatResult(basedOn: String(self.totalMatriculaAreasCmpe)))") : Text("")
                                        .font(.body)
                                }
                            case "Matrícula Buena Calidad Normal, TSU y Lic":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Calidad")
                                        .font(.headline.bold())
                                    matriculaCalidadBc != 0 ? Text("\(formatResult(basedOn: String(self.matriculaCalidadBc)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Total")
                                        .font(.headline.bold())
                                    matriculaTotalBc != 0 ? Text("\(formatResult(basedOn: String(self.matriculaTotalBc)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Evaluable")
                                        .font(.headline.bold())
                                    matriculaEvaluableBc != 0 ? Text("\(formatResult(basedOn: String(self.matriculaEvaluableBc)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% de Cobertura Total de Calidad")
                                        .font(.headline.bold())
                                    porcentajeCoberturaTotalCalidadBc != 0.0 ? Text("\(calcularPorcentaje(monto: self.porcentajeCoberturaTotalCalidadBc)) %") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% de Cobertura Evaluable")
                                        .font(.headline.bold())
                                    porcentajeCoberturaEvaluableBc != 0.0 ? Text("\(calcularPorcentaje(monto: self.porcentajeCoberturaEvaluableBc)) %") : Text("")
                                        .font(.body)
                                }
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresEntidad[3].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresEntidad[3])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresEntidad[4].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresEntidad[4])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Matrícula Subsistema ES":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos")
                                        .font(.headline.bold())
                                    Text("\(self.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UPE")
                                        .font(.headline.bold())
                                    upeSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.upeSubsistema)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UPEAS")
                                        .font(.headline.bold())
                                    upeasSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.upeasSubsistema)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UI")
                                        .font(.headline.bold())
                                    uiSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.uiSubsistema)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UPF")
                                        .font(.headline.bold())
                                    upfSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.upfSubsistema)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UT")
                                        .font(.headline.bold())
                                    utSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.utSubsistema)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UPOL")
                                        .font(.headline.bold())
                                    upolSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.upolSubsistema)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("IT")
                                        .font(.headline.bold())
                                    institutosTecnologicosSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.institutosTecnologicosSubsistema)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("IESEF")
                                        .font(.headline.bold())
                                    iesEntidadesFederativasSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.iesEntidadesFederativasSubsistema)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("N")
                                        .font(.headline.bold())
                                    normalesSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.normalesSubsistema)))")  : Text("")
                                        .font(.body)
                                    
                                    Text("UPN")
                                        .font(.headline.bold())
                                    upnProvinciaSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.upnProvinciaSubsistema)))")  : Text("")
                                        .font(.body)
                                    
                                    Text("CAM")
                                        .font(.headline.bold())
                                    camSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.camSubsistema)))")  : Text("")
                                        .font(.body)
                                    
                                    Text("P")
                                        .font(.headline.bold())
                                    particularesSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.particularesSubsistema)))")  : Text("")
                                        .font(.body)
                                    
                                    Text("TOTAL")
                                        .font(.headline.bold())
                                    totalSubsistema != 0 ? Text("\(formatResult(basedOn: String(self.totalSubsistema)))")  : Text("")
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
