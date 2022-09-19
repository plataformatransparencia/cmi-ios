import Foundation


struct IndicadoresPorUniversidad: Codable {
    var universidad: Universidad
    var otorgado: Int
    var solicitado: Int
    var porcentaje: Double
}


struct IndicadoresPorSubsistema: Codable {
    var subsistema: String
    var totalOtorgado: Int
    var totalSolicitado: Int
    var totalPorcentaje: Double
}
