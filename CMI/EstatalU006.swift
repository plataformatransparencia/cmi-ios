import Foundation

struct EstatalU006 : Codable {
    var universidad: Universidad
    var aportaciones : [AportacionesEstatal]
    var totalCalendarizado: Double
    var totalReportado: Double
    var totalAdeudosMensuales: Double
    var lineasCalendarizacion: Int
}

struct AportacionesEstatal : Codable {
    var mes: String
    var calendarizada: Double
    var observacion: String
    var reportes: [ReportesEstatal]
    var totalReportado: Double
    var adeudoMensual: Double

}

struct ReportesEstatal: Codable {
    var monto: Double
    var numeroTransferencia: String
    var fechaPago: String
}
