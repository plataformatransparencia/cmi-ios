import Foundation


struct FichaModuloIModel : Codable {
    var id : String
    var nombreIndicador: String
    var codigoIndicador: String
    var objetivoPrioritario: String
    var definicionDescripcion: String
    var fuente: String
    var nivelesDesagregacion: [NivelesDesagregacion]
    var unidadMedida : UnidadMedida
    var contribucionInstitucionesDGESUI : ContribucionInstitucionesDGESUI
    var tendenciaEsperada: String
    var periodoRecoleccionDatos: String
    var metodoCalculo: String
    var observaciones: String
    var componenteSistemico : [String?]
    var dimensionCalidadEducativa: [String]
    var variables: [Variables]
    var lineaBase: LineaBase
    var meta: Meta
}


struct UnidadMedida : Codable {
    var id: String
    var valor: String
}

struct NivelesDesagregacion : Codable{
    var id: String
    var valor: String
}

struct ContribucionInstitucionesDGESUI : Codable {
    var id: String
    var valor: String
}

struct Variables : Codable {
    var id: String
    var nombre: String
    var fuente: Fuente
}

struct Fuente : Codable, Hashable {
    let id: String
    var valor: String
}

struct LineaBase : Codable {
    var valor: String
    var anio: String
    var notas: String
}

struct Meta : Codable {
    var valor: String
    var notas: String
}
