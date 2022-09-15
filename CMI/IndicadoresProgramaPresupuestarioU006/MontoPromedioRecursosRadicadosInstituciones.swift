import Foundation

struct MontoPromedioRecursosRadicadosInstituciones: Codable {
    var nombreUniversidad: String
    var siglas: String
    var subsistema: String
    var entidadFederativa: String
    var montoEstatal: String
    var montoFederal: String
    var montoPublico: String
    var aportEst: String
    var aportFed: String
    var aportEstatal: Double
    var aportFederal: Double
}
