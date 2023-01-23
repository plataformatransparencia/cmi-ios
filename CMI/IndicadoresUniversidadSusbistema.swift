import Foundation


struct IndicadoresPorUniversidad: Codable {
    var universidad: Universidad
    var otorgado: String
    var solicitado: String
    var porcentaje: String
}


struct IndicadoresPorSubsistema: Codable {
    var subsistema: String
    var totalOtorgado: String
    var totalSolicitado: String
    var totalPorcentaje: String
}
