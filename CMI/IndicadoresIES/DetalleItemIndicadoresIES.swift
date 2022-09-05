import SwiftUI

struct DetalleItemIndicadoresIES: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var indicadorIES: IndicadorIES
    @State var sisup: Sisup
    @State var graficasIndicadoresIES : [String]
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
                            case "Bachillerato Tecnológico y Profesional Técnico":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Bachillerato Tecnológico")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.bachilleratoTecnologico)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Profesional Técnico")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.profesionalTecnico)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Subtotal Matrícula")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.subtotalMatriculaBgBt)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Subtotal Matrícula (Bachillerato Tecnológico+Profesional Técnico)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.subtotalMatriculaBtPt)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula EMS")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaBgBt)))")
                                        .font(.body)
                                }
                            case "EMS":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.hombresMatriculaEms)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.mujeresMatriculaEms)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaEms)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Discapacidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.conDiscapacidadMatriculaEms)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("HLI")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.hliMatriculaEms)))")
                                        .font(.body)
                                }
                            case "ES Nivel Educativo":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TSU/PA")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.tsuPaNeMatriculaEs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaNeMatriculaEs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.especialidadNeMatriculaEs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.maestriaNeMatriculaEs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.doctoradoNeMatriculaEs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TOTAL MATRÍCULA ES")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalEs)))")
                                        .font(.body)
                                }
                            case "ES Modalidad, Hombres y Mujeres":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres ES")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.hombresEs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres ES")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.mujeresEs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Escolarizada")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.escolarizadaEs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("No escolarizada")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.noEscolarizadaEs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mixta")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.mixtaEs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total EMS y ES")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaTotalEmsEs)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula total ponderada")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaTotalPonderada)))")
                                        .font(.body)
                                }
                            case "Áreas de la CMPE":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("E")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.educacionCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AH")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.artesHumanidadesCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CSD")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.cienciasSocialesDerechoCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AN")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.administracionNegociosCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CNME")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.cienciasNaturalesMatematicasEstadisticaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TIC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.ticCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("IMC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.ingenieriaManufacturaConstruccionCmpe)))")
                                        .font(.body)
                                    
                                    Text("AV")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.agronomiaVeterinariaCmpe)))")
                                        .font(.body)
                                    
                                    Text("CS")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.cienciasSaludCmpe)))")
                                        .font(.body)
                                    
                                    Text("S")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.serviciosCmpe)))")
                                        .font(.body)
                                    
                                    Text("Total ES")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaEs)))")
                                        .font(.body)
                                }
                            case "Oferta Educativa (activos) CMPE":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("E")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.educacionOfertaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AH")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.artesHumanidadesOfertaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CSD")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.cienciasSocialesDerechoOfertaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AN")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.administracionNegociosOfertaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CNME")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.cienciasNaturalesMatematicasEstadisticaOfertaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TIC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.ticOfertaCmpe)))")
                                        .font(.body)
                                    
                                    Text("IMC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.ingenieriaManufacturaConstruccionOfertaCmpe)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AV")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.agronomiaVeterinariaOfertaCmpe)))")
                                        .font(.body)
                                    
                                    Text("CS")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.cienciasSaludOfertaCmpe)))")
                                        .font(.body)
                                    
                                    Text("S")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.serviciosOfertaCmpe)))")
                                        .font(.body)
                                    
                                    Text("Total de Oferta Educativa (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalOferta)))")
                                        .font(.body)
                                    
                                    Text("Número de programas educativos PNPC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.numeroProgramasEducativos)))")
                                        .font(.body)
                                }
                            case "Alumnos TSU y LIC":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula T.S.U.")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaTsu)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaLicenciatura)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula TSU y Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaTsuLic)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AN")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.hombresDesgloseTsuLic)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.mujeresDesgloseTsuLic)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaTsu)))")
                                        .font(.body)
                                }
                            case "Alumnos Posgrado":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Especialidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaEspecialidad)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Maestría")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaMaestria)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Doctorado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaDoctorado)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula posgrado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaPosgrado)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.hombresPosgrado)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.mujeresPosgrado)))")
                                        .font(.body)
                                }
                            case "Alumnos Discapacidad TSU, LIC, POSG":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula (Con discapacidad) (TSU y Lic)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaDiscapacidadTsuLic)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula (Con discapacidad) (Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaDiscapacidadPosg)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula (Con discapacidad) (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaDiscapacidadTsuLicPosg)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.hombresDiscapacidad)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.mujeresDiscapacidad)))")
                                        .font(.body)
                                }
                            case "Alumnos HLI TSU, LIC, POSG":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula (Hablante de lengua indígena)(TSU y Lic)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaHliTsuLic)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula (Hablante de lengua indígena) (Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaHliPosg)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula (Hablante de lengua indígena) (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaHliTsuLicPosg)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.hombresHli)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.mujeresHli)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TOTAL")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalHli)))")
                                        .font(.body)
                                }
                            case "Alumnos Titulados":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.hombresTitulados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.mujeresTitulados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total con discapacidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalDiscapacidadTitulados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de Hablantes de Lenguas Indígenas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalHliTitulados)))")
                                        .font(.body)
                                }
                            case "Alumnos Nuevo Ingreso TSU, LIC, POSG":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Alumnos Nuevo Ingreso (TSU y Lic)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.alumnosNuevoIngresoTsuLic)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Alumnos Nuevo Ingreso (Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.alumnosNuevoIngresoPosg)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Alumnos Nuevo Ingreso (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalAlumnosNuevoIngresoTsuLicPosg)))")
                                        .font(.body)
                                }
                            case "Alumnos Egresados TSU, LIC, POSG":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Alumnos egresados (TSU y Lic)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.alumnosEgresadosTsuLic)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Alumnos egresados (Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.alumnosEgresadosPosg)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Alumnos egresados (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalAlumnosEgresadosTsuLicPosg)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.hombresEgresados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.mujeresEgresados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total con discapacidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalDiscapacidadEgresados)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total HLI")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalHliEgresados)))")
                                        .font(.body)
                                }
                            case "Oferta Educativa (activos) NE y TP":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Oferta Educativa (TSU y Licenciatura)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.ofertaEducativaProgramasTsuLic)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Oferta Educativa (Programas Posgrado)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.ofertaEducativaProgramasPosgrado)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de Oferta Educativa (activos TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalOfertaEducativaProgramasActivosTsuLicPosg)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Escolarizados (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.programasRscolarizadosTsuLicPosg)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mixto (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.programasMixtoTsuLicPosg)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("No Escolarizados (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.programasNoEscolarizadosTsuLicPosg)))")
                                        .font(.body)
                                }
                            case "Plantilla Administrativo":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Plantilla (personal administrativo)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.plantillaPersonalAdministrativo)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Plantilla (Mandos medios y/o superiores)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.plantillaMandosMediosDuperiores)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Plantilla (Docente Investigador, Investigadores, Aux. Investigador)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.plantillaDocenteInvestigadorInvestigadoresAuxInvestigador)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Otros (choferes, personal de limpieza, servicios generales, etc)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.otrosChoferesPersonalLimpiezaServiciosGeneralesEtc)))")
                                        .font(.body)
                                }
                            case "Personal Docente":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal Docente PTC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalDocentePtc)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal Docente PTCT")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalDocentePtct)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal Docente MT")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalDocenteMt)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal Docente PH")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalDocentePh)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Personal Docente (PTC, PTCT, MT,PH)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalPersonalDocentePtcPtctMtPh)))")
                                        .font(.body)
                                }
                            case "Programas Buena Calidad, Evaluables y Competititvidad Académica":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Número de Programas de Buena Calidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.numeroProgramasBc)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula de Programas de Buena Calidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaProgramasBc)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Número de Programas Evaluables")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.numeroProgramasEva)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Número de Programas (No Evaluable)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.numeroProgramasNoEva)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula de Programas Evaluables")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaProgramasEva)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula (Programas no Evaluables)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.matriculaProgramasNoEva)))")
                                        .font(.body)
                                }
                            case "% Programas":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% de Programas TSU y Licenciatura Evaluables de Buena Calidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.porcentajeProgramasTsuLicEvaBc)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Matrícula Atendida en Progamas de TSU y Licenciatura Evaluables de Buena Calidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.porcentajeMatriculaAtendidaProgamasTsuLicenciaturaEvaBc)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Competitividad Académica")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.porcentajeCompetitividadAcademica)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Competitividad y Capacidad Académica")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.competitividadCapacidadAcademica)))")
                                        .font(.body)
                                }
                                
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[0].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[0])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[1].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[1])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Número Programas TSU, LIC, POSG":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TSU/PA")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.tsuPa)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.licenciatura)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.especialidad)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.maestria)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.doctorado)))")
                                        .font(.body)
                                }
                            case "% Número Programas":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% CAC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.porcentajeCac)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Perfil Deseable")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.porcentajePerfilDeseable)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% S.N.I.")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.porcentajeSni)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Capacidad Académica")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.capacidadAcademica)))")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[2].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[2])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[3].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[3])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[4].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[4])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Alumnos Nivel Superior Modalidad Escolar":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Técnico superior")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.tecnicoSuperiorANSModalidadEscolar)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licencia Profesional")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.licenciaProfesionalANSModalidadEscolar)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaANSModalidadEscolar)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Posgrado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.posgradoANSModalidadEscolar)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Escolar")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalEscolarANSModalidadEscolar)))")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[5].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[5])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Alumnos Nivel Superior Modalidad no Escolarizada":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Técnico superior")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.tecnicoSuperiorANSModalidadNoEscolarizada)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licencia Profesional")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.licenciaProfesionalANSModalidadNoEscolarizada)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaANSModalidadNoEscolarizada)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Posgrado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.posgradoANSModalidadNoEscolarizada)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total No Escolarizada")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalNoEscolarizadaANSModalidadNoEscolarizada)))")
                                        .font(.body)
                                }
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[6].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[6])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                                
                            case "Personal de Facultades, Escuelas, Centros, Divisiones o Departamentos":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Directivo")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.directivoPF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Docente")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.docenteNoIncluyaPiPF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Docente-Investigador y Docente-Auxiliar de Investigador")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.docenteInvestigadorDocenteAuxiliarInvestigadorPF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Investigador")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.investigadorPF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Auxiliar de Investigador")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.auxiliarInvestigadorNoIncluyeSSPPPF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Administrativo")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.administrativoPF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Otros")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.otrosPF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de Personal")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalPersonalFacultadesPF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Directivo")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.directivo2PF)))")
                                        .font(.body)
                                    
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: true){
                                            !(graficasIndicadoresIES[7].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[7])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                        }
                                    }.padding(.bottom)
                                }
                                
                            case "Personal en Áreas Centrales":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Directivo")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.directivoPAC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Auxiliar de Investigador (no incluye servicio social y prácticas profesionales)")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.auxiliarInvestigadorNoIncluyeSSPPPAC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Administrativo")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.administrativoPAC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Otros")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalPersonalAreasCentralesPAC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Personal Áreas Centrales")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.otrosPAC)))")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[8].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[8])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Total Personal Institución":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de Personal de la Institución")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalPersonalInstitucion)))")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[9].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[9])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Total de Personal Docente Escolarizado":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal de Tiempo Completo")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalTiempoCompletoTPDE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal de Tres Cuartos de Tiempo")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalTresCuartosTiempoTPDE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal de Medio Tiempo")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalMedioTiempoTPDE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal por Hora o Asignatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalHoraOAsignaturaTPDE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalTPDE)))")
                                        .font(.body)
                                }
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[10].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[10])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Total de Personal Docente no Escolarizado":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal de Tiempo Completo")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalTiempoCompletoTPDNE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal de Tres Cuartos de Tiempo")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalTresCuartosTiempoTPDNE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal de Medio Tiempo")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalMedioTiempoTPDNE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal por Hora o Asignatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.personalHoraOAsignaturaTPDNE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalTPDNE)))")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[11].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[11])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Carrera, Programas y Alumnos de la Modalidad Escolarizada":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Técnico Superior")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.tecnicoSuperiorCarreraPYAME)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura Profesional")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaProfesionalCarreraPYAME)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaCarreraPYAME)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.especialidadCarreraPYAME)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.maestriaCarreraPYAME)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.doctoradoCarreraPYAME)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalCarreraPYAME)))")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[12].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[12])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Carrera, Programas y Alumnos de la Modalidad no Escolarizada":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Técnico Superior")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.tecnicoSuperiorCarreraPYAMNE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura Profesional")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaProfesionalCarreraPYAMNE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaCarreraPYAMNE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.especialidadCarreraPYAMNE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.maestriaCarreraPYAMNE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.doctoradoCarreraPYAMNE)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(indicadorIES.totalCarreraPYAMNE)))")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[13].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[13])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Desglose Profesores de Tiempo Completo (PTC)":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC Licenciatura")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.licenciaturaPTC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC con Maestría")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.maestriaPTC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC con Doctorado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.doctoradoPTC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC con posgrado")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.posgradoPTC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de PTC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.totalPTC)))")
                                }
                                      
                            case "Desglose Profesores Perfil Deseable vigente y SNI":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Con Perfil Deseable Vigente")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.perfilDeseableVigente)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.C")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.snic)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.1")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.snic1)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.2")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.snic2)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.3")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.snic3)))")
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total SNI Vigente")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.totalSNIVigente)))")
                                }
                            case "Cuerpos Académicos (CA)":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total CAEF")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.totalCAEF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total CAEC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.totalCAEC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total CAC")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.totalCAC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total CA")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.totalCA)))")
                                        .font(.body)
                                }
                            case "Desglose CAEF":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Agropecuarias")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSAgropecuariasCAEF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Salud")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSSaludCAEF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Naturales y Exactas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSNaturalesExactasCAEF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Sociales y Administrativas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSSocialesAdministrativasCAEF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Ingeniería y Tecnología")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSIngenieriaTecnologiaCAEF)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área Educación, Humanidades y Artes")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaEducacionHumanidadesArtesCAEF)))")
                                        .font(.body)
                                }
                            case "Desglose CAEC":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Agropecuarias")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSAgropecuariasCAEC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Salud")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSSaludCAEC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Naturales y Exactas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSNaturalesExactasCAEC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Sociales y Administrativas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSSocialesAdministrativasCAEC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Ingeniería y Tecnología")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSIngenieriaTecnologiaCAEC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área Educación, Humanidades y Artes")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaEducacionHumanidadesArtesCAEC)))")
                                        .font(.body)
                                }
                            case "Desglose CAC":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Agropecuarias")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSAgropecuariasCAC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Salud")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSSaludCAC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Naturales y Exactas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSNaturalesExactasCAC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Sociales y Administrativas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSSocialesAdministrativasCAC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Ingeniería y Tecnología")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSIngenieriaTecnologiaCAC)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área Educación, Humanidades y Artes")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaEducacionHumanidadesArtesCAC)))")
                                        .font(.body)
                                }
                            case "Desglose CA":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Agropecuarias")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSAgropecuariasCA)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Salud")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSSaludCA)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Naturales y Exactas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSNaturalesExactasCA)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Sociales y Administrativas")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSSocialesAdministrativasCA)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Ingeniería y Tecnología")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaCSIngenieriaTecnologiaCA)))")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área Educación, Humanidades y Artes")
                                        .font(.headline.bold())
                                    Text("\(formatResult(basedOn: String(sisup.areaEducacionHumanidadesArtesCA)))")
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
