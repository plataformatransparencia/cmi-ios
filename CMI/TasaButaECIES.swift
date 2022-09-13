import Foundation

struct TasaBrutaECIES : Codable {
    var universidad: Universidad
    var censoEstatalHombres: Int
    var censoEstatalMujeres: Int
    var totalTSUPA: Int
    var totalLicenciatura: Int
    var totalHombres: Int
    var totalMujeres: Int
    var totalDiscapacitados: Int
    var totalHablanteLenguaIndigena: Int
    var totalEscolarizado: Int
    var totalNoEscolarizado: Int
    var totalMixto: Int
    var matriculaTotal: Int
    var contribucionDGESUI: Double
    var contribucionDGESUIHombres: Double
    var contribucionDGESUIMujeres: Double
    var porcentajeConDiscapacidad: Double
    var porcentajeHablanteLenguaIndigena: Double
    var porcentajeEscolarizado: Double
    var porcentajeNoEscolarizado: Double
    var porcentajeMixto: Double
}
