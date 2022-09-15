import Foundation


struct MontoPromedioRecursosRadicadosAlumnos : Codable {
    var nombreUniversidad: String
    var siglas: String
    var subsistema: String
    var entidadFederativa: String
    var montoEstatal: String
    var montoFederal: String
    var montoPublico: String
    var aportEst: String
    var aportFed: String
    var matriculaSuperior: Int
    var matriculaMediaSuperior: Int
    var matriculaTotal: Int
    var matriculaPond: Int
    var subFedAlum: String
    var subEstAlum: String
    var subsTotAlum: String
    var montPubAlum: String
    var porcentaje: Double
}
