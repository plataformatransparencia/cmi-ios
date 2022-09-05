import Foundation


struct IndicadoresIES : Codable {
    var universidad: Universidad
    var indicadorIES: IndicadorIES
    var sisup: Sisup
}

struct IndicadorIES: Codable {
    var id: String
    var universidad: Universidad
    var ejercicioFiscal: Int
    var cicloDatos: String
    
    var bachilleratoTecnologico: Int
    var profesionalTecnico: Int
    var subtotalMatriculaBgBt: Int
    var subtotalMatriculaBtPt: Int
    var totalMatriculaBgBt: Int
    
    var hombresMatriculaEms: Int
    var mujeresMatriculaEms: Int
    var totalMatriculaEms: Int
    var conDiscapacidadMatriculaEms: Int
    var hliMatriculaEms: Int
    
    var tsuPaNeMatriculaEs: Int
    var licenciaturaNeMatriculaEs: Int
    var especialidadNeMatriculaEs: Int
    var maestriaNeMatriculaEs: Int
    var doctoradoNeMatriculaEs: Int
    var totalEs: Int
    
    var hombresEs: Int
    var mujeresEs: Int
    var escolarizadaEs: Int
    var noEscolarizadaEs: Int
    var mixtaEs: Int
    var matriculaTotalEmsEs: Int
    var matriculaTotalPonderada: Int
    
    var educacionCmpe: Int
    var artesHumanidadesCmpe: Int
    var cienciasSocialesDerechoCmpe: Int
    var administracionNegociosCmpe: Int
    var cienciasNaturalesMatematicasEstadisticaCmpe: Int
    var ticCmpe: Int
    var ingenieriaManufacturaConstruccionCmpe: Int
    var agronomiaVeterinariaCmpe: Int
    var cienciasSaludCmpe: Int
    var serviciosCmpe: Int
    var totalMatriculaEs: Int
    
    var educacionOfertaCmpe: Int
    var artesHumanidadesOfertaCmpe: Int
    var cienciasSocialesDerechoOfertaCmpe: Int
    var administracionNegociosOfertaCmpe: Int
    var cienciasNaturalesMatematicasEstadisticaOfertaCmpe: Int
    var ticOfertaCmpe: Int
    var ingenieriaManufacturaConstruccionOfertaCmpe: Int
    var agronomiaVeterinariaOfertaCmpe: Int
    var cienciasSaludOfertaCmpe: Int
    var serviciosOfertaCmpe: Int
    var totalOferta: Int
    var numeroProgramasEducativos: Int
    
    var matriculaTsu: Int
    var matriculaLicenciatura: Int
    var totalMatriculaTsuLic: Int
    var hombresDesgloseTsuLic: Int
    var mujeresDesgloseTsuLic: Int
    
    var matriculaEspecialidad: Int
    var matriculaMaestria: Int
    var matriculaDoctorado: Int
    var totalMatriculaPosgrado: Int
    var hombresPosgrado: Int
    var mujeresPosgrado: Int
    
    var matriculaDiscapacidadTsuLic: Int
    var matriculaDiscapacidadPosg: Int
    var totalMatriculaDiscapacidadTsuLicPosg: Int
    var hombresDiscapacidad: Int
    var mujeresDiscapacidad: Int
    
    var matriculaHliTsuLic: Int
    var matriculaHliPosg: Int
    var totalMatriculaHliTsuLicPosg: Int
    var hombresHli: Int
    var mujeresHli: Int
    var totalHli: Int
    
    var hombresTitulados: Int
    var mujeresTitulados: Int
    var totalDiscapacidadTitulados: Int
    var totalHliTitulados: Int
    
    var alumnosNuevoIngresoTsuLic: Int
    var alumnosNuevoIngresoPosg: Int
    var totalAlumnosNuevoIngresoTsuLicPosg: Int
    
    var alumnosEgresadosTsuLic: Int
    var alumnosEgresadosPosg: Int
    var totalAlumnosEgresadosTsuLicPosg: Int
    var hombresEgresados: Int
    var mujeresEgresados: Int
    var totalDiscapacidadEgresados: Int
    var totalHliEgresados: Int
    
    var ofertaEducativaProgramasTsuLic: Int
    var ofertaEducativaProgramasPosgrado: Int
    var totalOfertaEducativaProgramasActivosTsuLicPosg: Int
    var programasRscolarizadosTsuLicPosg: Int
    var programasMixtoTsuLicPosg: Int
    var programasNoEscolarizadosTsuLicPosg: Int
    
    var plantillaPersonalAdministrativo: Int
    var plantillaMandosMediosDuperiores: Int
    var plantillaDocenteInvestigadorInvestigadoresAuxInvestigador: Int
    var otrosChoferesPersonalLimpiezaServiciosGeneralesEtc: Int
    
    var personalDocentePtc: Int
    var personalDocentePtct: Int
    var personalDocenteMt: Int
    var personalDocentePh: Int
    var totalPersonalDocentePtcPtctMtPh: Int
    
    var numeroProgramasBc: Int
    var matriculaProgramasBc: Int
    var numeroProgramasEva: Int
    var numeroProgramasNoEva: Int
    var matriculaProgramasEva: Int
    var matriculaProgramasNoEva: Int
    
    var porcentajeProgramasTsuLicEvaBc: Double
    var porcentajeMatriculaAtendidaProgamasTsuLicenciaturaEvaBc: Double
    var porcentajeCompetitividadAcademica: Double
    var competitividadCapacidadAcademica: Double
    
    var tsuPa: Int
    var licenciatura: Int
    var especialidad: Int
    var maestria: Int
    var doctorado: Int
    
    var porcentajeCac: Double
    var porcentajePerfilDeseable: Double
    var porcentajeSni: Double
    var capacidadAcademica: Int
    
    var tecnicoSuperiorANSModalidadEscolar: Int
    var licenciaProfesionalANSModalidadEscolar: Int
    var licenciaturaANSModalidadEscolar: Int
    var posgradoANSModalidadEscolar: Int
    var totalEscolarANSModalidadEscolar: Int
    
    var tecnicoSuperiorANSModalidadNoEscolarizada: Int
    var licenciaProfesionalANSModalidadNoEscolarizada: Int
    var licenciaturaANSModalidadNoEscolarizada: Int
    var posgradoANSModalidadNoEscolarizada: Int
    var totalNoEscolarizadaANSModalidadNoEscolarizada: Int
    
    var directivoPF: Int
    var docenteNoIncluyaPiPF: Int
    var docenteInvestigadorDocenteAuxiliarInvestigadorPF: Int
    var investigadorPF: Int
    var auxiliarInvestigadorNoIncluyeSSPPPF: Int
    var administrativoPF: Int
    var otrosPF: Int
    var totalPersonalFacultadesPF: Int
    var directivo2PF: Int
    
    var directivoPAC: Int
    var auxiliarInvestigadorNoIncluyeSSPPPAC: Int
    var administrativoPAC: Int
    var totalPersonalAreasCentralesPAC: Int
    var otrosPAC: Int
    
    var totalPersonalInstitucion: Int
    
    var personalTiempoCompletoTPDE: Int
    var personalTresCuartosTiempoTPDE: Int
    var personalMedioTiempoTPDE: Int
    var personalHoraOAsignaturaTPDE: Int
    var totalTPDE: Int
    
    var personalTiempoCompletoTPDNE: Int
    var personalTresCuartosTiempoTPDNE: Int
    var personalMedioTiempoTPDNE: Int
    var personalHoraOAsignaturaTPDNE: Int
    var totalTPDNE: Int
    
    var tecnicoSuperiorCarreraPYAME: Int
    var licenciaturaProfesionalCarreraPYAME: Int
    var licenciaturaCarreraPYAME: Int
    var especialidadCarreraPYAME: Int
    var maestriaCarreraPYAME: Int
    var doctoradoCarreraPYAME: Int
    var totalCarreraPYAME: Int
    
    var tecnicoSuperiorCarreraPYAMNE: Int
    var licenciaturaProfesionalCarreraPYAMNE: Int
    var licenciaturaCarreraPYAMNE: Int
    var especialidadCarreraPYAMNE: Int
    var maestriaCarreraPYAMNE: Int
    var doctoradoCarreraPYAMNE: Int
    var totalCarreraPYAMNE: Int
    
}


struct Sisup: Codable {
    var id: String
    var universidad: Universidad
    var ejercicioFiscal: Int
    var cicloDatos: String
    
    var licenciaturaPTC: Int
    var maestriaPTC: Int
    var doctoradoPTC: Int
    var posgradoPTC: Int
    var totalPTC: Int
    
    var perfilDeseableVigente: Int
    var snic: Int
    var snic1: Int
    var snic2: Int
    var snic3: Int
    var totalSNIVigente: Int
    
    var totalCAEF: Int
    var totalCAEC: Int
    var totalCAC: Int
    var totalCA: Int
    
    var areaCSAgropecuariasCAEF: Int
    var areaCSSaludCAEF: Int
    var areaCSNaturalesExactasCAEF: Int
    var areaCSSocialesAdministrativasCAEF: Int
    var areaCSIngenieriaTecnologiaCAEF: Int
    var areaEducacionHumanidadesArtesCAEF: Int
    
    var areaCSAgropecuariasCAEC: Int
    var areaCSSaludCAEC: Int
    var areaCSNaturalesExactasCAEC: Int
    var areaCSSocialesAdministrativasCAEC: Int
    var areaCSIngenieriaTecnologiaCAEC: Int
    var areaEducacionHumanidadesArtesCAEC: Int
    
    var areaCSAgropecuariasCAC: Int
    var areaCSSaludCAC: Int
    var areaCSNaturalesExactasCAC: Int
    var areaCSSocialesAdministrativasCAC: Int
    var areaCSIngenieriaTecnologiaCAC: Int
    var areaEducacionHumanidadesArtesCAC: Int
    
    var areaCSAgropecuariasCA: Int
    var areaCSSaludCA: Int
    var areaCSNaturalesExactasCA: Int
    var areaCSSocialesAdministrativasCA: Int
    var areaCSIngenieriaTecnologiaCA: Int
    var areaEducacionHumanidadesArtesCA: Int
}

