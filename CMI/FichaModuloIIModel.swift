import Foundation

struct FichaModuloIIModel : Codable {
    var id: String
    var nombreIndicador: String
    var codigoIndicador: String
    var objetivo: String
    var clasificacion: String
    var definicion: String
    var nivelDesagregacion: String
    var tendenciaEsperada: String
    var unidadMedida: String
    var periodicidad: String
    var metodoCalculo: String
    var observaciones: String
    var nombreVariable1: String
    var nombreVariable2: String
    var fuenteInfoVariable1: String
    var fuenteInfoVariable2: String
    var lineaBaseValor: String
    var lineaBaseAnio: String
    var lineaBaseNota: String
    var meta2024: String
    var meta2024Nota: String
    var metaIntermedia2020: String
    var metaIntermedia2021: String
    var metaIntermedia2022: String
    var metaIntermedia2023: String
    var metaIntermedia2024: String
    var fuentes: [FuentesModII]
    var componenteSistemico : [ComponenteSistemicoModII]
    var dimensionCalidadEducativa : [DimensionCalidadEducativaModII]
}

struct FuentesModII : Codable {
   var fuente: String
}

struct ComponenteSistemicoModII : Codable {
    var contexto: String
    var insumos: String
    var procesos: String
    var resultados: String
}

struct DimensionCalidadEducativaModII : Codable {
    var obligatoriedad: String
    var gratuidad: String
    var equidad: String
    var inclusion: String
    var pertinencia: String
    var relevancia: String
    var eficacia: String
    var suficiencia: String
    var eficiencia: String
    var impacto: String
}
