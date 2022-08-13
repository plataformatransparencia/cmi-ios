import Foundation


struct TasaBrutaEscolarizacionPoblacionPrimerosCuatroDecilesIngresoModel : Codable {
    var tabla : TablaPoblacion
    var graficaTotal: String
    var graficaMujeres: String
    var graficaHombres: String
    var graficaDiscapacitados: String
    var graficaHablantesLenguaIndigena: String
    var referencias: [Referencias]
}

struct TablaPoblacion : Codable {
    var registros: [RegistrosPoblacion]
    var referencias: [Referencias]
    var hombres: Int
    var mujeres: Int
    var total: Int
    var discapacitados: Int
    var hablantesLenguaIndigena: Int
    var hombresEnRangoDeEdad: Int
    var mujeresEnRangoDeEdad: Int
    var totalEnRangoDeEdad: Int
    var discapacitadosEnRangoDeEdad: Int
    var hablantesLenguaIndigenaEnRangoDeEdad: Int
    var tasaEscolarizacionHombres: Double
    var tasaEscolarizacionMujeres: Double
    var tasaGeneral: Double
    var tasaDiscapacitados: Double
    var tasaHablantesLenguaIndigena: Double
    
}

struct RegistrosPoblacion: Codable {
    var entidadFederativa : ValorEntidades
    var mujeres: Int
    var hombres: Int
    var discapacitados: Int
    var hablantesLenguaIndigena: Int
    var mujeresEnRangoDeEdad: Int
    var hombresEnRangoDeEdad: Int
    var discapacitadosEnRangoDeEdad: Int
    var hablantesLenguaIndigenaEnRangoDeEdad: Int
    var total: Int
    var totalEnRangoDeEdad: Int
    var tasaEscolarizacionHombres: Double
    var tasaEscolarizacionMujeres: Double
    var tasaGeneral: Double
    var tasaDiscapacitados: Double
    var tasaHablantesLenguaIndigena: Double
    
}
