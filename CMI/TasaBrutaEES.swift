import Foundation


struct TasaBrutaEES: Codable {
    var entidadFederativa : ValorEntidades
    var censoMuj: Int
    var censoHom: Int
    var matriculaMuj: Int
    var matriculaHom: Int
    var censoTotal: Int
    var matriculaTotal: Int
    var tasaMujeres: Double
    var tasaHombres: Double
    var tasaEscolarizacion: Double
}
