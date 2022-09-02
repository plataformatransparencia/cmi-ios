import Foundation


struct FichaModuloIIIModel : Codable {
    var id: String
    var nombreCategoria: String
    var codigo: String
    var definicionDescripcion: String
    var fuente: String
    var periodoRecoleccion: String
    var unidadMedida : UnidadMedida
    var observaciones: String
    var nivelesDesagregacion: [NivelesDesagregacion]
    var uidadesResponsable : [UnidadResponsable]
    var componenteSistemico : [String]
    var dimensionCalidadEducativa : [String]
}

struct UnidadResponsable: Codable {
    var id: String
    var valor: String
}

