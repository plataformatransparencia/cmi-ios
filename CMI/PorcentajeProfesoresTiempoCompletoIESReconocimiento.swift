import Foundation

struct PorcentajeProfesoresTiempoCompletoIESReconocimiento : Codable {
    var nombre: String
    var siglas: String
    var ejercicioFiscal: Int
    var cicloMatricula: String
    var entidadFederativa: String
    var subsistema: String
    var totalPtc: Int
    var ptcLicenciatura: Int
    var ptcMaestria: Int
    var ptcDoctorado: Int
    var ptcPosgrado: Int
    var perfilDeseable: Int
    var snic: Int
    var sni1: Int
    var sni2: Int
    var sni3: Int
    var totalSniVigente: Int
    var porcentajeGrafica: Double
}
