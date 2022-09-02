import Foundation

struct U080: Codable {
    var id: String
    var ejercicioFiscal: Int
    var oscCentro: OscCentro
    var instrumento: String
    var estatusConvenio: String
    var fechaFormalizacion: String
    var recursosAsignados: Double
    var observacionEspecifica: String
}

struct OscCentro: Codable {
    var cluni: String
    var nombre: String
    var siglas: String
    var entidadFederativa: ValorEntidades
}
