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
                                    Text("\(formatResult(basedOn: String(self.poblacion18A22HombreCobertura)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Población (18-22) (Mujer)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.poblacion18A22MujerCobertura)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Población (18-22) (Total)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.poblacion18A22TotalCobertura)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Cobertura (Hombre)")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.porcentajeCoberturaHombreCobertura)) %")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Cobertura (Mujer)")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.porcentajeCoberturaMujerCobertura)) %")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Tasa bruta cobertura")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.tasaBrutaCobertura)) %")
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
                                    Text("\(formatResult(basedOn: String(self.poblacion18A22HombreCobertura2013)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Población (18-22) (Mujer)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.poblacion18A22MujerCobertura2013)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Población (18-22) (Total)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.poblacion18A22TotalCobertura2013)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Tasa bruta cobertura")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.tasaBrutaCobertura2013)) %")
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
                                    Text("\(formatResult(basedOn: String(self.matriculaLicenciaturaNs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Total TSU y Lic")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalMatriculaTsuLicenciaturaNs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula TSU y Lic Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.matriculaTsuLicenciaturaHombresNs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula TSU y Lic Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.matriculaTsuLicenciaturaMujeresNs)))")
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
                                    Text("\(formatResult(basedOn: String(self.matriculaEspecialidadNs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Maestría")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.matriculaMaestriaNs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Doctorado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.matriculaDoctoradoNs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula Posgrado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalMatriculaPosgradoNs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Posgrado Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.matriculaPosgradoHombresNs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Posgrado Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.matriculaPosgradoMujeresNs)))")
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
                                    Text("\(formatResult(basedOn: String(self.totalEmsEgresadosPublicoParticularNms)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoNms)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público Federal)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoFederalNms)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público Estatal)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoEstatalNms)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Público Autónomo)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.emsEgresadosPublicoAutonomoNms)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("EMS Egresados (Particular)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.emsEgresadosParticularNms)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total 1er Ingreso Público y Particular")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalPrimerIngresoPublicoParticularNms)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("1er Ingreso (Público) (TSU y Lic)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.primerIngresoPublicoTsuLicNms)))")
                                        .font(.body)
                                }
                                
                                VStack(alignment: .leading,spacing: 10){
                                    Text("1er Ingreso (Particular) (TSU y Lic)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.primerIngresoPaticularTsuLicNms)))")
                                        .font(.body)
                                    
                                    Text("Total Indice de absorción %")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.totalIndiceAbsorcion))")
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
                                    Text("\(formatResult(basedOn: String(self.numeroIesEstadoPublicasParticularesDies)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UPE en el Estado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.upeEstadoDies)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UPEA en el Estado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.upeasEstadoDies)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UI en el Estado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.uiEstadoDies)))")
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
                                    Text("\(formatResult(basedOn: String(self.matriculaEscolTsuLicPosDesMod)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula No Escol (TSU, Lic y Pos)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.matriculaNoEscolTsuLicPosDesMod)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Mixta (TSU, Lic y Pos)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.matriculaMixtaTsuLicPosDesMod)))")
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
                                    Text("\(formatResult(basedOn: String(self.totalPtc)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Con Perfil Deseable Vigente")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.conPerfilDeseableVigente)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Con SNI Vigente")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.conSniVigente)))")
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
                                    Text("\(formatResult(basedOn: String(self.matriculaDiscapacidadTsuLicPosDesDiscapacidad)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.hombresDesDiscapacidad)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.mujeresDesDiscapacidad)))")
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
                                    Text("\(formatResult(basedOn: String(self.matriculaHliTsuLicPosDesHli)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.hombresDeshli)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.mujeresDeshli)))")
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
                                    Text("\(formatResult(basedOn: String(self.educacionCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AH")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.artesHumanidadesCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CSD")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.cienciasSocialesDerechoCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AN")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.administracionNegociosCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CNME")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.cienciasNaturalesMatematicasStadisticaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TIC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.teconologiasInformacionComunicacionCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("IMC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.ingenieriaManufacturaConstruccionCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AV")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.agronomiaVeterinariaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CS")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.cienciasSaludCmpe)))")
                                        .font(.body)
                                    
                                    Text("Servicios")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.serviciosCmpe)))")
                                        .font(.body)
                                    
                                    Text("Total CMPE")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalMatriculaAreasCmpe)))")
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
                                    Text("\(formatResult(basedOn: String(self.matriculaCalidadBc)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Total")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.matriculaTotalBc)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Evaluable")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.matriculaEvaluableBc)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% de Cobertura Total de Calidad")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.porcentajeCoberturaTotalCalidadBc)) %")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% de Cobertura Evaluable")
                                        .font(.headline.bold())
                                    Text("\(calcularPorcentaje(monto: self.porcentajeCoberturaEvaluableBc)) %")
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
                                    Text("\(formatResult(basedOn: String(self.upeSubsistema)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UPEAS")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.upeasSubsistema)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UI")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.uiSubsistema)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UPF")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.upfSubsistema)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UT")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.utSubsistema)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("UPOL")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.upolSubsistema)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("IT")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.institutosTecnologicosSubsistema)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("IESEF")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.iesEntidadesFederativasSubsistema)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("N")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.normalesSubsistema)))")
                                        .font(.body)
                                    
                                    Text("UPN")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.upnProvinciaSubsistema)))")
                                        .font(.body)
                                    
                                    Text("CAM")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.camSubsistema)))")
                                        .font(.body)
                                    
                                    Text("P")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.particularesSubsistema)))")
                                        .font(.body)
                                    
                                    Text("TOTAL")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(self.totalSubsistema)))")
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
