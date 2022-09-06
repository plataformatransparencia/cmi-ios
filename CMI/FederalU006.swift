import Foundation

struct FederalU006 : Codable {
    var listaCalendarizado : [ListaCalendarizado]
    var listaReportado: [ListaReportado]
    var listaPlataforma: [ListaPlataforma]
    var universidad: Universidad
    var lineasCalendarizacion: Int
    var lineasReporteUniversidad: Int
    var totalCalendarizado: Double
    var totalComprobado: Double
    var totalReportado: Double
}

struct ListaCalendarizado : Codable {
    var mes: String
    var aportacion: Double
    var comprobaciones: [Comprobaciones]
    
    
}

struct Comprobaciones: Codable {
        var comprobadaCLC: Double
        var numeroCLC: String
        var fechaPago: String
    
}

struct ListaReportado : Codable {
    var mes: String
    var reportes: [Reportes]
}

struct Reportes : Codable {
        var aportacion: Double
        var numeroTransferencia: String
        var fechaPago: String

}

struct ListaPlataforma : Codable {
    var  mes: String
    var  aportacion: Double
    var  observacion: String
    var  adeudoMensual: Double
}
