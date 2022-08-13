import Foundation

struct PorcentajeEficienciaTerminalSistemaEducativoNacionalModel : Codable {
    var tabla : TablaPorcentajeEficienciaTerminalSEN
    var graficaTotal: String
    var graficaMujeres: String
    var graficaHombres: String
    var graficaDiscapacitados: String
    var referencias: [Referencias]
}

struct TablaPorcentajeEficienciaTerminalSEN : Codable {
    var registros : [RegistrosPorcentajeEficienciaTerminalSEN]
    var periodoAnterior: String
    var seisPeriodosAtras: String
    var referencias: [Referencias]
    var egresadosCicloAnteriorHombres: Int
    var nuevoIngresoSeisCiclosAtrasHombres: Int
    var egresadosCicloAnteriorMujeres: Int
    var nuevoIngresoSeisCiclosAtrasMujeres: Int
    var egresadosCicloAnteriorDiscapacitados: Int
    var nuevoIngresoSeisCiclosAtrasDiscapacitados: Int
    var eficienciaTerminalHombres: Double
    var eficienciaTerminalMujeres: Double
    var eficienciaTerminalDiscapacitados: Double
    var egresadosCicloAnteriorGeneral: Int
    var nuevoIngresoSeisCiclosAtrasGeneral: Int
    var eficienciaTerminalGeneral: Double
}

struct RegistrosPorcentajeEficienciaTerminalSEN : Codable {
    var universidad : Universidad
    var egresadosCicloAnteriorHombres: Int
    var nuevoIngresoSeisCiclosAtrasHombres: Int
    var egresadosCicloAnteriorMujeres: Int
    var nuevoIngresoSeisCiclosAtrasMujeres: Int
    var egresadosCicloAnteriorDiscapacitados: Int
    var nuevoIngresoSeisCiclosAtrasDiscapacitados: Int
    var egresadosCicloAnteriorGeneral: Int
    var nuevoIngresoSeisCiclosAtrasGeneral: Int
    var eficienciaTerminalGeneral: Double
    var eficienciaTerminalHombres: Double
    var eficienciaTerminalMujeres: Double
    var eficienciaTerminalDiscapacitados: Double

}

