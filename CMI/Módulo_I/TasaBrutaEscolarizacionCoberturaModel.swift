import Foundation


struct TasaBrutaEscolarizacionCoberturaModel: Codable {
    var tabla : Tabla
    var graficaTotal: String
    var graficaMujeres: String
    var graficaHombres: String
    var referencias: [Referencias]
}

struct Tabla: Codable {
    var entradas : [Entidades]
    var referencias: [Referencias]
    var censoMujGlobal: Int
    var censoHomGlobal: Int
    var censoTotalGlobal: Int
    var matriculaMujGlobal: Int
    var matriculaHomGlobal: Int
    var matriculaTotalGlobal: Int
    var tasaMujeresGlobal: Double
    var tasaHombresGlobal: Double
    var tasaEscolarizacionGlobal: Double
}

struct Entidades: Codable {
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


struct ValorEntidades: Codable {
    var id: Int
    var valor: String
    var enumerable: String
    var abreviatura: String
    
    enum CodingKeys : String, CodingKey {
        case id,valor,enumerable = "enum",abreviatura
    }
}

struct Referencias: Codable {
    var id: String
    var texto: String
    var url : String
}
