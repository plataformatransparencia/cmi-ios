import Foundation


struct PorcentajeAbosorcionAlumnosEgresados: Codable {
    var id: Int
    var ejercicioFiscal: Int
    var cicloDatos: String
    var entidadFederativa: String
    var totalEmsEgresadosPublicoParticular: Int
    var emsEgresadosPublico: Int
    var emsEgresadosPublicoFederal: Int
    var emsEgresadosPublicoEstatal: Int
    var emsEgresadosPublicoAutonomo: Int
    var emsEgresadosPublicoParticular: Int
    var totalPrimerIngresoPublicoParticular: Int
    var primerIngresoPublicoTSULIC: Int
    var primerIngresoParticularTSULIC: Int
    var entidadFedrativa: String
    var totalIndiceAbsorcion: String
}

