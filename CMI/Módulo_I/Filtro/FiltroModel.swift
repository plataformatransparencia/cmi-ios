import Foundation


struct FiltroModel : Codable {
    var id: String
    var valor: String
    var periodoIES: String
    var periodoEF: String
    var anioU006: String
    var anioCenso: String
    var anioENIGH: String
    var anioCuentasNacionales: String
    var publicado: Bool
    
    enum CodingKeys : String, CodingKey {
        case id = "id"
        case valor = "valor"
        case periodoIES = "periodoEstadisticaEducativaIES"
        case periodoEF = "periodoEstadisticaEducativaEntidadFederativa"
        case anioU006 = "anioU006"
        case anioCenso = "not-anioCenso-policy"
        case anioENIGH = "anioENIGH"
        case anioCuentasNacionales = "anioCuentasNacionales"
        case publicado = "publicado"
    }
}
