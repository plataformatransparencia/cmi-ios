import Foundation


struct IndicadoresSubsistema: Codable {
    var id: String
    var ejercicioFiscal: Int
    var subsistema: Subsistema
    var tsuPaNe: Int
    var licenciaturaNe: Int
    var totalTsuLicNe: Int
    var especialidadNe: Int
    var maestriaNe: Int
    var doctoradoNe: Int
    var totalPosgradoNe: Int
    var totalTsuLicPosNe: Int
    var hombresEsNe: Int
    var mujeresEsNe: Int
    var totalEsNe: Int
    var totalHombresDiscapacidadEsNe: Int
    var totalMujeresDiscapacidadEsNe: Int
    var totalHombresHliEsNe: Int
    var totalMujeresHliEsNe: Int
    var hombresEgresados: Int
    var mujeresEgresados: Int
    var totalDiscapacidadEgresados: Int
    var totalHliEgresados: Int
    var hombresTitulados: Int
    var mujeresTitulados: Int
    var totalDiscapacidadTitulados: Int
    var totalHliTitulados: Int
    var escolarizadaMm: Int
    var noEscolarizadaMm: Int
    var mixtaMm: Int
    var tsuPaMp: Int
    var licenciaturaMp: Int
    var especialidadMp: Int
    var maestriaMp: Int
    var doctoradoMp: Int
    var totalHombresMp: Int
    var totalMujeresMp: Int
    var tsuPaTp: Int
    var licenciaturaTp: Int
    var especialidadTp: Int
    var maestriaTp: Int
    var doctoradoTp: Int
    var educacionMaCmpe: Int
    var artesHumanidadesMaCmpe: Int
    var cienciasSocialesDerechoMaCmpe: Int
    var administracionNegociosMaCmpe: Int
    var cienciasNaturalesMatematicasEstadisticaMaCmpe: Int
    var ticMaCmpe: Int
    var ingenieriaManufacturaConstruccionMaCmpe: Int
    var agronomiaVeterinariaMaCmpe: Int
    var cienciasSaludMaCmpe: Int
    var serviciosMaCmpe: Int
    var totalMatriculaEs: Int
}

struct Subsistema: Codable {
    var siglas: String
    var valor: String
}
