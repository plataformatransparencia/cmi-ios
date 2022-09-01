import Foundation

struct OrdinarioU006: Codable {
    var universidad: Universidad
    var instrumento: String
    var estatusConvenio: String
    var montoEstatal: Double
    var montoFederal: Double
    var montoPublico: Double
    var matriculaSuperior: Int
    var matriculaMediaSuperior: Int
    var porcentajeFederal: Double
    var porcentajeEstatal: Double
    var matriculaTotal: Int
    var matriculaTotalPonderada: Int
    var subsidioEstatalPorAlumno: Double
    var subsidioFederalPorAlumno: Double
    var subsidioPublicoPorAlumno: Double
}

