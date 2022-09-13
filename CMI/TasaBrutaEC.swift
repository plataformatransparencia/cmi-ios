import Foundation


struct TasaBrutaEC: Codable {
    var entidadFederativa : ValorEntidades
    var universidad: Universidad
    var matriculaHombres: Int
    var matriculaMujeres: Int
    var censoHombres: Int
    var censoMujeres: Int
    var matriculaTotal: Int
    var censoTotal: Int
    var contribucion: Double
    var contribucionHombres: Double
    var contribucionMujeres: Double
}
