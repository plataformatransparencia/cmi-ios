import SwiftUI

struct DetalleItemIndicadoresIES: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var indicadorIES: IndicadorIES
    @State var sisup: Sisup
    @State var graficasIndicadoresIES : [String]
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
                                    indicadorIES.bachilleratoTecnologico != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.bachilleratoTecnologico)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Profesional Técnico")
                                        .font(.headline.bold())
                                    indicadorIES.profesionalTecnico != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.profesionalTecnico)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Subtotal Matrícula")
                                        .font(.headline.bold())
                                    indicadorIES.subtotalMatriculaBgBt != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.subtotalMatriculaBgBt)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Subtotal Matrícula (Bachillerato Tecnológico+Profesional Técnico)")
                                        .font(.headline.bold())
                                    indicadorIES.subtotalMatriculaBtPt != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.subtotalMatriculaBtPt)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula EMS")
                                        .font(.headline.bold())
                                    indicadorIES.totalMatriculaBgBt != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaBgBt)))") : Text("")
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
                                    indicadorIES.hombresMatriculaEms != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.hombresMatriculaEms)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    indicadorIES.mujeresMatriculaEms != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.mujeresMatriculaEms)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total")
                                        .font(.headline.bold())
                                    indicadorIES.totalMatriculaEms != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaEms)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Discapacidad")
                                        .font(.headline.bold())
                                    indicadorIES.conDiscapacidadMatriculaEms != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.conDiscapacidadMatriculaEms)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("HLI")
                                        .font(.headline.bold())
                                    indicadorIES.hliMatriculaEms != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.hliMatriculaEms)))") : Text("")
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
                                    indicadorIES.tsuPaNeMatriculaEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.tsuPaNeMatriculaEs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    indicadorIES.licenciaturaNeMatriculaEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaNeMatriculaEs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    indicadorIES.especialidadNeMatriculaEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.especialidadNeMatriculaEs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    indicadorIES.maestriaNeMatriculaEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.maestriaNeMatriculaEs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    indicadorIES.doctoradoNeMatriculaEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.doctoradoNeMatriculaEs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TOTAL MATRÍCULA ES")
                                        .font(.headline.bold())
                                    indicadorIES.totalEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalEs)))") : Text("")
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
                                    indicadorIES.hombresEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.hombresEs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres ES")
                                        .font(.headline.bold())
                                    indicadorIES.mujeresEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.mujeresEs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Escolarizada")
                                        .font(.headline.bold())
                                    indicadorIES.escolarizadaEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.escolarizadaEs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("No escolarizada")
                                        .font(.headline.bold())
                                    indicadorIES.noEscolarizadaEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.noEscolarizadaEs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mixta")
                                        .font(.headline.bold())
                                    indicadorIES.mixtaEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.mixtaEs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total EMS y ES")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaTotalEmsEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaTotalEmsEs)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula total ponderada")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaTotalPonderada != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaTotalPonderada)))") : Text("")
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
                                    indicadorIES.educacionCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.educacionCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AH")
                                        .font(.headline.bold())
                                    indicadorIES.artesHumanidadesCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.artesHumanidadesCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CSD")
                                        .font(.headline.bold())
                                    indicadorIES.cienciasSocialesDerechoCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.cienciasSocialesDerechoCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AN")
                                        .font(.headline.bold())
                                    indicadorIES.administracionNegociosCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.administracionNegociosCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CNME")
                                        .font(.headline.bold())
                                    indicadorIES.cienciasNaturalesMatematicasEstadisticaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.cienciasNaturalesMatematicasEstadisticaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TIC")
                                        .font(.headline.bold())
                                    indicadorIES.ticCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.ticCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("IMC")
                                        .font(.headline.bold())
                                    indicadorIES.ingenieriaManufacturaConstruccionCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.ingenieriaManufacturaConstruccionCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("AV")
                                        .font(.headline.bold())
                                    indicadorIES.agronomiaVeterinariaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.agronomiaVeterinariaCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("CS")
                                        .font(.headline.bold())
                                    indicadorIES.cienciasSaludCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.cienciasSaludCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("S")
                                        .font(.headline.bold())
                                    indicadorIES.serviciosCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.serviciosCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("Total ES")
                                        .font(.headline.bold())
                                    indicadorIES.totalMatriculaEs != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaEs)))") : Text("")
                                        .font(.body)
                                    
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Referencia")
                                        .font(.headline.bold())
                                    Text("E: Educación \nAH: Artes y Humanidades\nCSD: Ciencias Sociales y Derecho \nAN: Administración de negocios \nCNME: Ciencias Naturales, Matemáticas y Estadística \nTIC: Tecnologías de la Información y la Comunicación \nIMC: Ingenieria, Manufactura y Construcción \nAV: Agronomia y Veterinaria \nCS: Ciencias de la Salud \nS: Servicios")
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
                                    indicadorIES.educacionOfertaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.educacionOfertaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AH")
                                        .font(.headline.bold())
                                    indicadorIES.artesHumanidadesOfertaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.artesHumanidadesOfertaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CSD")
                                        .font(.headline.bold())
                                    indicadorIES.cienciasSocialesDerechoOfertaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.cienciasSocialesDerechoOfertaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AN")
                                        .font(.headline.bold())
                                    indicadorIES.administracionNegociosOfertaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.administracionNegociosOfertaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("CNME")
                                        .font(.headline.bold())
                                    indicadorIES.cienciasNaturalesMatematicasEstadisticaOfertaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.cienciasNaturalesMatematicasEstadisticaOfertaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TIC")
                                        .font(.headline.bold())
                                    indicadorIES.ticOfertaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.ticOfertaCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("IMC")
                                        .font(.headline.bold())
                                    indicadorIES.ingenieriaManufacturaConstruccionOfertaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.ingenieriaManufacturaConstruccionOfertaCmpe)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AV")
                                        .font(.headline.bold())
                                    indicadorIES.agronomiaVeterinariaOfertaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.agronomiaVeterinariaOfertaCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("CS")
                                        .font(.headline.bold())
                                    indicadorIES.cienciasSaludOfertaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.cienciasSaludOfertaCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("S")
                                        .font(.headline.bold())
                                    indicadorIES.serviciosOfertaCmpe != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.serviciosOfertaCmpe)))") : Text("")
                                        .font(.body)
                                    
                                    Text("Total de Oferta Educativa (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.totalOferta != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalOferta)))") : Text("")
                                        .font(.body)
                                    
                                    Text("Número de programas educativos PNPC")
                                        .font(.headline.bold())
                                    indicadorIES.numeroProgramasEducativos != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.numeroProgramasEducativos)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Referencia")
                                        .font(.headline.bold())
                                    Text("E: Educación \nAH: Artes y Humanidades\nCSD: Ciencias Sociales y Derecho \nAN: Administración de negocios \nCNME: Ciencias Naturales, Matemáticas y Estadística \nTIC: Tecnologías de la Información y la Comunicación \nIMC: Ingenieria, Manufactura y Construcción \nAV: Agronomia y Veterinaria \nCS: Ciencias de la Salud \nS: Servicios")
                                        .font(.body)
                                }
                            case "Estudiantes TSU y LIC":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula T.S.U.")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaTsu != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaTsu)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Licenciatura")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaLicenciatura != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaLicenciatura)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula TSU y Licenciatura")
                                        .font(.headline.bold())
                                    indicadorIES.totalMatriculaTsuLic != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaTsuLic)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("AN")
                                        .font(.headline.bold())
                                    indicadorIES.hombresDesgloseTsuLic != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.hombresDesgloseTsuLic)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    indicadorIES.mujeresDesgloseTsuLic != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.mujeresDesgloseTsuLic)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaTsu != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaTsu)))") : Text("")
                                        .font(.body)
                                }
                            case "Estudiantes Posgrado":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Especialidad")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaEspecialidad != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaEspecialidad)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Maestría")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaMaestria != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaMaestria)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula Doctorado")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaDoctorado != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaDoctorado)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula posgrado")
                                        .font(.headline.bold())
                                    indicadorIES.totalMatriculaPosgrado != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaPosgrado)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    indicadorIES.hombresPosgrado != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.hombresPosgrado)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    indicadorIES.mujeresPosgrado != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.mujeresPosgrado)))") : Text("")
                                        .font(.body)
                                }
                            case "Estudiantes Discapacidad TSU, LIC, POSG":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula (Con discapacidad) (TSU y Lic)")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaDiscapacidadTsuLic != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaDiscapacidadTsuLic)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula (Con discapacidad) (Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaDiscapacidadPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaDiscapacidadPosg)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula (Con discapacidad) (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.totalMatriculaDiscapacidadTsuLicPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaDiscapacidadTsuLicPosg)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    indicadorIES.hombresDiscapacidad != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.hombresDiscapacidad)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    indicadorIES.mujeresDiscapacidad != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.mujeresDiscapacidad)))") : Text("")
                                        .font(.body)
                                }
                            case "Estudiantes HLI TSU, LIC, POSG":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula (Hablante de lengua indígena)(TSU y Lic)")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaHliTsuLic != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaHliTsuLic)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula (Hablante de lengua indígena) (Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaHliPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaHliPosg)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Matrícula (Hablante de lengua indígena) (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.totalMatriculaHliTsuLicPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalMatriculaHliTsuLicPosg)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    indicadorIES.hombresHli != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.hombresHli)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    indicadorIES.mujeresHli != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.mujeresHli)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("TOTAL")
                                        .font(.headline.bold())
                                    indicadorIES.totalHli != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalHli)))") : Text("")
                                        .font(.body)
                                }
                            case "Estudiantes Titulados":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    indicadorIES.hombresTitulados != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.hombresTitulados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    indicadorIES.mujeresTitulados != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.mujeresTitulados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total con discapacidad")
                                        .font(.headline.bold())
                                    indicadorIES.totalDiscapacidadTitulados != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalDiscapacidadTitulados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de Hablantes de Lenguas Indígenas")
                                        .font(.headline.bold())
                                    indicadorIES.totalHliTitulados != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalHliTitulados)))") : Text("")
                                        .font(.body)
                                }
                            case "Estudiantes Nuevo Ingreso TSU, LIC, POSG":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estudiantes Nuevo Ingreso (TSU y Lic)")
                                        .font(.headline.bold())
                                    indicadorIES.alumnosNuevoIngresoTsuLic != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.alumnosNuevoIngresoTsuLic)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estudiantes Nuevo Ingreso (Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.alumnosNuevoIngresoPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.alumnosNuevoIngresoPosg)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Estudiantes Nuevo Ingreso (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.totalAlumnosNuevoIngresoTsuLicPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalAlumnosNuevoIngresoTsuLicPosg)))") : Text("")
                                        .font(.body)
                                }
                            case "Estudiantes Egresados TSU, LIC, POSG":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estudiantes egresados (TSU y Lic)")
                                        .font(.headline.bold())
                                    indicadorIES.alumnosEgresadosTsuLic != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.alumnosEgresadosTsuLic)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estudiantes egresados (Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.alumnosEgresadosPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.alumnosEgresadosPosg)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Estudiantes egresados (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.totalAlumnosEgresadosTsuLicPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalAlumnosEgresadosTsuLicPosg)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Hombres")
                                        .font(.headline.bold())
                                    indicadorIES.hombresEgresados != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.hombresEgresados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mujeres")
                                        .font(.headline.bold())
                                    indicadorIES.mujeresEgresados != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.mujeresEgresados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total con discapacidad")
                                        .font(.headline.bold())
                                    indicadorIES.totalDiscapacidadEgresados != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalDiscapacidadEgresados)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total HLI")
                                        .font(.headline.bold())
                                    indicadorIES.totalHliEgresados != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalHliEgresados)))") : Text("")
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
                                    indicadorIES.ofertaEducativaProgramasTsuLic != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.ofertaEducativaProgramasTsuLic)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Oferta Educativa (Programas Posgrado)")
                                        .font(.headline.bold())
                                    indicadorIES.ofertaEducativaProgramasPosgrado != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.ofertaEducativaProgramasPosgrado)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de Oferta Educativa (activos TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.totalOfertaEducativaProgramasActivosTsuLicPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalOfertaEducativaProgramasActivosTsuLicPosg)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Escolarizados (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.programasRscolarizadosTsuLicPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.programasRscolarizadosTsuLicPosg)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Mixto (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.programasMixtoTsuLicPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.programasMixtoTsuLicPosg)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("No Escolarizados (TSU, Lic y Posg)")
                                        .font(.headline.bold())
                                    indicadorIES.programasNoEscolarizadosTsuLicPosg != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.programasNoEscolarizadosTsuLicPosg)))") : Text("")
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
                                    indicadorIES.plantillaPersonalAdministrativo != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.plantillaPersonalAdministrativo)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Plantilla (Mandos medios y/o superiores)")
                                        .font(.headline.bold())
                                    indicadorIES.plantillaMandosMediosDuperiores != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.plantillaMandosMediosDuperiores)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Plantilla (Docente Investigador, Investigadores, Aux. Investigador)")
                                        .font(.headline.bold())
                                    indicadorIES.plantillaDocenteInvestigadorInvestigadoresAuxInvestigador != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.plantillaDocenteInvestigadorInvestigadoresAuxInvestigador)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Otros (choferes, personal de limpieza, servicios generales, etc)")
                                        .font(.headline.bold())
                                    indicadorIES.otrosChoferesPersonalLimpiezaServiciosGeneralesEtc != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.otrosChoferesPersonalLimpiezaServiciosGeneralesEtc)))") : Text("")
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
                                    indicadorIES.personalDocentePtc != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalDocentePtc)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal Docente PTCT")
                                        .font(.headline.bold())
                                    indicadorIES.personalDocentePtct != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalDocentePtct)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal Docente MT")
                                        .font(.headline.bold())
                                    indicadorIES.personalDocenteMt != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalDocenteMt)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal Docente PH")
                                        .font(.headline.bold())
                                    indicadorIES.personalDocentePh != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalDocentePh)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Personal Docente (PTC, PTCT, MT,PH)")
                                        .font(.headline.bold())
                                    indicadorIES.totalPersonalDocentePtcPtctMtPh != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalPersonalDocentePtcPtctMtPh)))") : Text("")
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
                                    indicadorIES.numeroProgramasBc != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.numeroProgramasBc)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula de Programas de Buena Calidad")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaProgramasBc != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaProgramasBc)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Número de Programas Evaluables")
                                        .font(.headline.bold())
                                    indicadorIES.numeroProgramasEva != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.numeroProgramasEva)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Número de Programas (No Evaluable)")
                                        .font(.headline.bold())
                                    indicadorIES.numeroProgramasNoEva != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.numeroProgramasNoEva)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula de Programas Evaluables")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaProgramasEva != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaProgramasEva)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Matrícula (Programas no Evaluables)")
                                        .font(.headline.bold())
                                    indicadorIES.matriculaProgramasNoEva != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.matriculaProgramasNoEva)))") : Text("")
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
                                    indicadorIES.porcentajeProgramasTsuLicEvaBc != 0.0 ? Text("\(formatResult(basedOn: String(indicadorIES.porcentajeProgramasTsuLicEvaBc)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Matrícula Atendida en Progamas de TSU y Licenciatura Evaluables de Buena Calidad")
                                        .font(.headline.bold())
                                    indicadorIES.porcentajeMatriculaAtendidaProgamasTsuLicenciaturaEvaBc != 0.0 ? Text("\(formatResult(basedOn: String(indicadorIES.porcentajeMatriculaAtendidaProgamasTsuLicenciaturaEvaBc)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Competitividad Académica")
                                        .font(.headline.bold())
                                    indicadorIES.porcentajeCompetitividadAcademica != 0.0 ? Text("\(formatResult(basedOn: String(indicadorIES.porcentajeCompetitividadAcademica)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Competitividad y Capacidad Académica")
                                        .font(.headline.bold())
                                    indicadorIES.competitividadCapacidadAcademica != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.competitividadCapacidadAcademica)))") : Text("")
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
                                    indicadorIES.tsuPa != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.tsuPa)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    indicadorIES.licenciatura != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.licenciatura)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    indicadorIES.especialidad != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.especialidad)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    indicadorIES.maestria != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.maestria)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    indicadorIES.doctorado != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.doctorado)))") : Text("")
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
                                    indicadorIES.porcentajeCac != 0.0 ? Text("\(formatResult(basedOn: String(indicadorIES.porcentajeCac)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% Perfil Deseable")
                                        .font(.headline.bold())
                                    indicadorIES.porcentajePerfilDeseable != 0.0 ? Text("\(formatResult(basedOn: String(indicadorIES.porcentajePerfilDeseable)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("% S.N.I.")
                                        .font(.headline.bold())
                                    indicadorIES.porcentajeSni != 0.0 ? Text("\(formatResult(basedOn: String(indicadorIES.porcentajeSni)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Capacidad Académica")
                                        .font(.headline.bold())
                                    indicadorIES.capacidadAcademica != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.capacidadAcademica)))") : Text("")
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
                            case "Estudiantes Nivel Superior Modalidad Escolar":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Técnico superior")
                                        .font(.headline.bold())
                                    indicadorIES.tecnicoSuperiorANSModalidadEscolar != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.tecnicoSuperiorANSModalidadEscolar)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licencia Profesional")
                                        .font(.headline.bold())
                                    indicadorIES.licenciaProfesionalANSModalidadEscolar != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.licenciaProfesionalANSModalidadEscolar)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    indicadorIES.licenciaturaANSModalidadEscolar != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaANSModalidadEscolar)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Posgrado")
                                        .font(.headline.bold())
                                    indicadorIES.posgradoANSModalidadEscolar != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.posgradoANSModalidadEscolar)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Escolar")
                                        .font(.headline.bold())
                                    indicadorIES.totalEscolarANSModalidadEscolar != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalEscolarANSModalidadEscolar)))") : Text("")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[5].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[5])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Estudiantes Nivel Superior Modalidad no Escolarizada":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Técnico superior")
                                        .font(.headline.bold())
                                    indicadorIES.tecnicoSuperiorANSModalidadNoEscolarizada != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.tecnicoSuperiorANSModalidadNoEscolarizada)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licencia Profesional")
                                        .font(.headline.bold())
                                    indicadorIES.licenciaProfesionalANSModalidadNoEscolarizada != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.licenciaProfesionalANSModalidadNoEscolarizada)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    indicadorIES.licenciaturaANSModalidadNoEscolarizada != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaANSModalidadNoEscolarizada)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Posgrado")
                                        .font(.headline.bold())
                                    indicadorIES.posgradoANSModalidadNoEscolarizada != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.posgradoANSModalidadNoEscolarizada)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total No Escolarizada")
                                        .font(.headline.bold())
                                    indicadorIES.totalNoEscolarizadaANSModalidadNoEscolarizada != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalNoEscolarizadaANSModalidadNoEscolarizada)))"): Text("")
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
                                    indicadorIES.directivoPF != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.directivoPF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Docente")
                                        .font(.headline.bold())
                                    indicadorIES.docenteNoIncluyaPiPF != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.docenteNoIncluyaPiPF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Docente-Investigador y Docente-Auxiliar de Investigador")
                                        .font(.headline.bold())
                                    indicadorIES.docenteInvestigadorDocenteAuxiliarInvestigadorPF != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.docenteInvestigadorDocenteAuxiliarInvestigadorPF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Investigador")
                                        .font(.headline.bold())
                                    indicadorIES.investigadorPF != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.investigadorPF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Auxiliar de Investigador")
                                        .font(.headline.bold())
                                    indicadorIES.auxiliarInvestigadorNoIncluyeSSPPPF != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.auxiliarInvestigadorNoIncluyeSSPPPF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Administrativo")
                                        .font(.headline.bold())
                                    indicadorIES.administrativoPF != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.administrativoPF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Otros")
                                        .font(.headline.bold())
                                    indicadorIES.otrosPF != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.otrosPF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de Personal")
                                        .font(.headline.bold())
                                    indicadorIES.totalPersonalFacultadesPF != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalPersonalFacultadesPF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Directivo")
                                        .font(.headline.bold())
                                    indicadorIES.directivo2PF != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.directivo2PF)))"): Text("")
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
                                    indicadorIES.directivoPAC != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.directivoPAC)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Auxiliar de Investigador (no incluye servicio social y prácticas profesionales)")
                                        .font(.headline.bold())
                                    indicadorIES.auxiliarInvestigadorNoIncluyeSSPPPAC != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.auxiliarInvestigadorNoIncluyeSSPPPAC)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Administrativo")
                                        .font(.headline.bold())
                                    indicadorIES.administrativoPAC != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.administrativoPAC)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Otros")
                                        .font(.headline.bold())
                                    indicadorIES.totalPersonalAreasCentralesPAC != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalPersonalAreasCentralesPAC)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total Personal Áreas Centrales")
                                        .font(.headline.bold())
                                    indicadorIES.otrosPAC != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.otrosPAC)))") : Text("")
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
                                    indicadorIES.totalPersonalInstitucion != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalPersonalInstitucion)))") : Text("")
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
                                    indicadorIES.personalTiempoCompletoTPDE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalTiempoCompletoTPDE)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal de Tres Cuartos de Tiempo")
                                        .font(.headline.bold())
                                    indicadorIES.personalTresCuartosTiempoTPDE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalTresCuartosTiempoTPDE)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal de Medio Tiempo")
                                        .font(.headline.bold())
                                    indicadorIES.personalMedioTiempoTPDE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalMedioTiempoTPDE)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal por Hora o Asignatura")
                                        .font(.headline.bold())
                                    indicadorIES.personalHoraOAsignaturaTPDE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalHoraOAsignaturaTPDE)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total")
                                        .font(.headline.bold())
                                    indicadorIES.totalTPDE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalTPDE)))")  : Text("")
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
                                    indicadorIES.personalTiempoCompletoTPDNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalTiempoCompletoTPDNE)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal de Tres Cuartos de Tiempo")
                                        .font(.headline.bold())
                                    indicadorIES.personalTresCuartosTiempoTPDNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalTresCuartosTiempoTPDNE)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal de Medio Tiempo")
                                        .font(.headline.bold())
                                    indicadorIES.personalMedioTiempoTPDNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalMedioTiempoTPDNE)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Personal por Hora o Asignatura")
                                        .font(.headline.bold())
                                    indicadorIES.personalHoraOAsignaturaTPDNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.personalHoraOAsignaturaTPDNE)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total")
                                        .font(.headline.bold())
                                    indicadorIES.totalTPDNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalTPDNE)))") : Text("")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[11].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[11])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Carrera, Programas y Estudiantes de la Modalidad Escolarizada":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Técnico Superior")
                                        .font(.headline.bold())
                                    indicadorIES.tecnicoSuperiorCarreraPYAME != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.tecnicoSuperiorCarreraPYAME)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura Profesional")
                                        .font(.headline.bold())
                                    indicadorIES.licenciaturaProfesionalCarreraPYAME != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaProfesionalCarreraPYAME)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    indicadorIES.licenciaturaCarreraPYAME != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaCarreraPYAME)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    indicadorIES.especialidadCarreraPYAME != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.especialidadCarreraPYAME)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    indicadorIES.maestriaCarreraPYAME != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.maestriaCarreraPYAME)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    indicadorIES.doctoradoCarreraPYAME != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.doctoradoCarreraPYAME)))")  : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total")
                                        .font(.headline.bold())
                                    indicadorIES.totalCarreraPYAME != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalCarreraPYAME)))")  : Text("")
                                        .font(.body)
                                }
                                
                                HStack{
                                    ScrollView(.horizontal, showsIndicators: true){
                                        !(graficasIndicadoresIES[12].isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficasIndicadoresIES[12])!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                                    }
                                }.padding(.bottom)
                            case "Carrera, Programas y Estudiantes de la Modalidad no Escolarizada":
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Ciclo de datos de matrícula")
                                        .font(.headline.bold())
                                    Text("\(indicadorIES.cicloDatos)")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Técnico Superior")
                                        .font(.headline.bold())
                                    indicadorIES.tecnicoSuperiorCarreraPYAMNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.tecnicoSuperiorCarreraPYAMNE)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura Profesional")
                                        .font(.headline.bold())
                                    indicadorIES.licenciaturaProfesionalCarreraPYAMNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaProfesionalCarreraPYAMNE)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Licenciatura")
                                        .font(.headline.bold())
                                    indicadorIES.licenciaturaCarreraPYAMNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.licenciaturaCarreraPYAMNE)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Especialidad")
                                        .font(.headline.bold())
                                    indicadorIES.especialidadCarreraPYAMNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.especialidadCarreraPYAMNE)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Maestría")
                                        .font(.headline.bold())
                                    indicadorIES.maestriaCarreraPYAMNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.maestriaCarreraPYAMNE)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Doctorado")
                                        .font(.headline.bold())
                                    indicadorIES.doctoradoCarreraPYAMNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.doctoradoCarreraPYAMNE)))") : Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total")
                                        .font(.headline.bold())
                                    indicadorIES.totalCarreraPYAMNE != 0 ? Text("\(formatResult(basedOn: String(indicadorIES.totalCarreraPYAMNE)))") : Text("")
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
                                    sisup.licenciaturaPTC != 0 ? Text("\(formatResult(basedOn: String(sisup.licenciaturaPTC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC con Maestría")
                                        .font(.headline.bold())
                                    sisup.maestriaPTC != 0 ? Text("\(formatResult(basedOn: String(sisup.maestriaPTC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC con Doctorado")
                                        .font(.headline.bold())
                                    sisup.doctoradoPTC != 0 ? Text("\(formatResult(basedOn: String(sisup.doctoradoPTC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("PTC con posgrado")
                                        .font(.headline.bold())
                                    sisup.posgradoPTC != 0 ? Text("\(formatResult(basedOn: String(sisup.posgradoPTC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total de PTC")
                                        .font(.headline.bold())
                                    sisup.totalPTC != 0 ? Text("\(formatResult(basedOn: String(sisup.totalPTC)))"): Text("")
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
                                    sisup.perfilDeseableVigente != 0 ? Text("\(formatResult(basedOn: String(sisup.perfilDeseableVigente)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.C")
                                        .font(.headline.bold())
                                    sisup.snic != 0 ? Text("\(formatResult(basedOn: String(sisup.snic)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.1")
                                        .font(.headline.bold())
                                    sisup.snic1 != 0 ? Text("\(formatResult(basedOn: String(sisup.snic1)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.2")
                                        .font(.headline.bold())
                                    sisup.snic2 != 0 ? Text("\(formatResult(basedOn: String(sisup.snic2)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("S.N.I.3")
                                        .font(.headline.bold())
                                    sisup.snic3 != 0 ? Text("\(formatResult(basedOn: String(sisup.snic3)))"): Text("")
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total SNI Vigente")
                                        .font(.headline.bold())
                                    sisup.totalSNIVigente != 0 ? Text("\(formatResult(basedOn: String(sisup.totalSNIVigente)))"): Text("")
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
                                    sisup.totalCAEF != 0 ? Text("\(formatResult(basedOn: String(sisup.totalCAEF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total CAEC")
                                        .font(.headline.bold())
                                    sisup.totalCAEC != 0 ? Text("\(formatResult(basedOn: String(sisup.totalCAEC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total CAC")
                                        .font(.headline.bold())
                                    sisup.totalCAC != 0 ? Text("\(formatResult(basedOn: String(sisup.totalCAC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Total CA")
                                        .font(.headline.bold())
                                    sisup.totalCA != 0 ? Text("\(formatResult(basedOn: String(sisup.totalCA)))"): Text("")
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
                                    sisup.areaCSAgropecuariasCAEF != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSAgropecuariasCAEF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Salud")
                                        .font(.headline.bold())
                                    sisup.areaCSSaludCAEF != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSSaludCAEF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Naturales y Exactas")
                                        .font(.headline.bold())
                                    sisup.areaCSNaturalesExactasCAEF != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSNaturalesExactasCAEF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Sociales y Administrativas")
                                        .font(.headline.bold())
                                    sisup.areaCSSocialesAdministrativasCAEF != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSSocialesAdministrativasCAEF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Ingeniería y Tecnología")
                                        .font(.headline.bold())
                                    sisup.areaCSIngenieriaTecnologiaCAEF != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSIngenieriaTecnologiaCAEF)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área Educación, Humanidades y Artes")
                                        .font(.headline.bold())
                                    sisup.areaEducacionHumanidadesArtesCAEF != 0 ? Text("\(formatResult(basedOn: String(sisup.areaEducacionHumanidadesArtesCAEF)))"): Text("")
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
                                    sisup.areaCSAgropecuariasCAEC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSAgropecuariasCAEC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Salud")
                                        .font(.headline.bold())
                                    sisup.areaCSSaludCAEC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSSaludCAEC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Naturales y Exactas")
                                        .font(.headline.bold())
                                    sisup.areaCSNaturalesExactasCAEC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSNaturalesExactasCAEC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Sociales y Administrativas")
                                        .font(.headline.bold())
                                    sisup.areaCSSocialesAdministrativasCAEC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSSocialesAdministrativasCAEC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Ingeniería y Tecnología")
                                        .font(.headline.bold())
                                    sisup.areaCSIngenieriaTecnologiaCAEC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSIngenieriaTecnologiaCAEC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área Educación, Humanidades y Artes")
                                        .font(.headline.bold())
                                    sisup.areaEducacionHumanidadesArtesCAEC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaEducacionHumanidadesArtesCAEC)))"): Text("")
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
                                    sisup.areaCSAgropecuariasCAC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSAgropecuariasCAC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Salud")
                                        .font(.headline.bold())
                                    sisup.areaCSSaludCAC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSSaludCAC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Naturales y Exactas")
                                        .font(.headline.bold())
                                    sisup.areaCSNaturalesExactasCAC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSNaturalesExactasCAC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Sociales y Administrativas")
                                        .font(.headline.bold())
                                    sisup.areaCSSocialesAdministrativasCAC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSSocialesAdministrativasCAC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Ingeniería y Tecnología")
                                        .font(.headline.bold())
                                    sisup.areaCSIngenieriaTecnologiaCAC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSIngenieriaTecnologiaCAC)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área Educación, Humanidades y Artes")
                                        .font(.headline.bold())
                                    sisup.areaEducacionHumanidadesArtesCAC != 0 ? Text("\(formatResult(basedOn: String(sisup.areaEducacionHumanidadesArtesCAC)))"): Text("")
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
                                    sisup.areaCSAgropecuariasCA != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSAgropecuariasCA)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Salud")
                                        .font(.headline.bold())
                                    sisup.areaCSSaludCA != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSSaludCA)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Naturales y Exactas")
                                        .font(.headline.bold())
                                    sisup.areaCSNaturalesExactasCA != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSNaturalesExactasCA)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Sociales y Administrativas")
                                        .font(.headline.bold())
                                    sisup.areaCSSocialesAdministrativasCA != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSSocialesAdministrativasCA)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área CS. Ingeniería y Tecnología")
                                        .font(.headline.bold())
                                    sisup.areaCSIngenieriaTecnologiaCA != 0 ? Text("\(formatResult(basedOn: String(sisup.areaCSIngenieriaTecnologiaCA)))"): Text("")
                                        .font(.body)
                                }
                                VStack(alignment: .leading,spacing: 10){
                                    Text("Área Educación, Humanidades y Artes")
                                        .font(.headline.bold())
                                    sisup.areaEducacionHumanidadesArtesCA != 0 ? Text("\(formatResult(basedOn: String(sisup.areaEducacionHumanidadesArtesCA)))"): Text("")
                                        .font(.body)
                                }
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
