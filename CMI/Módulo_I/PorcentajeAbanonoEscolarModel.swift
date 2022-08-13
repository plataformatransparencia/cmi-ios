import Foundation


struct PorcentajeAbanonoEscolarModel : Codable {
    var tabla : TablaPorcentajeAbandonoEscolar
    var graficaTotal: String
    var graficaMujeres: String
    var graficaHombres: String
    var graficaDiscapacitados: String
    var graficaHablantesLenguaIndigena: String
    var referencias: [Referencias]
}


struct TablaPorcentajeAbandonoEscolar : Codable {
    var registros : [RegistrosPorcentajeAbandono]
    var periodo: String
    var periodoAnterior: String
    var referencias: [Referencias]
    var matriculaPeriodoAnteriorHombres: Int
    var egresadosPeriodoAnteriorHombres: Int
    var matriculaHombres: Int
    var nuevoIngresoHombres: Int
    var matriculaPeriodoAnteriorMujeres: Int
    var egresadosPeriodoAnteriorMujeres: Int
    var matriculaMujeres: Int
    var nuevoIngresoMujeres: Int
    var matriculaPeriodoAnteriorDiscapacitados: Int
    var egresadosPeriodoAnteriorDiscapacitados: Int
    var matriculaDiscapacitados: Int
    var nuevoIngresoDiscapacitados: Int
    var matriculaPeriodoAnteriorHablantesLenguaIndigena: Int
    var egresadosPeriodoAnteriorHablantesLenguaIndigena: Int
    var matriculaHablantesLenguaIndigena: Int
    var nuevoIngresoHablantesLenguaIndigena: Int
    var matriculaPeriodoAnteriorGeneral: Int
    var egresadosPeriodoAnteriorGeneral: Int
    var matriculaGeneral: Int
    var nuevoIngresoGeneral: Int
    var abandonoHombres: Int
    var tasaAbandonoHombres: Double
    var tasaRetencionHombres: Double
    var abandonoMujeres: Int
    var tasaAbandonoMujeres: Double
    var tasaRetencionMujeres: Double
    var abandonoDiscapacitados: Int
    var tasaAbandonoDiscapacitados: Double
    var tasaRetencionDiscapacitados: Double
    var abandonoHablantesLenguaIndigena: Int
    var tasaAbandonoHablantesLenguaIndigena: Double
    var tasaRetencionHablantesLenguaIndigena: Double
    var abandonoGeneral: Int
    var tasaAbandonoGeneral: Double
    var tasaRetencionGeneral: Double
}

struct RegistrosPorcentajeAbandono : Codable {
    var universidad : Universidad
    
    var matriculaPeriodoAnteriorHombres: Int
    var egresadosPeriodoAnteriorHombres: Int
    var matriculaHombres: Int
    var nuevoIngresoHombres: Int
    var matriculaPeriodoAnteriorMujeres: Int
    var egresadosPeriodoAnteriorMujeres: Int
    var matriculaMujeres: Int
    var nuevoIngresoMujeres: Int
    var matriculaPeriodoAnteriorDiscapacitados: Int
    var egresadosPeriodoAnteriorDiscapacitados: Int
    var matriculaDiscapacitados: Int
    var nuevoIngresoDiscapacitados: Int
    var matriculaPeriodoAnteriorHablantesLenguaIndigena: Int
    var egresadosPeriodoAnteriorHablantesLenguaIndigena: Int
    var matriculaHablantesLenguaIndigena: Int
    var nuevoIngresoHablantesLenguaIndigena: Int
    var matriculaPeriodoAnteriorGeneral: Int
    var egresadosPeriodoAnteriorGeneral: Int
    var matriculaGeneral: Int
    var nuevoIngresoGeneral: Int
    var abandonoHombres: Int
    var tasaAbandonoHombres: Double
    var tasaRetencionHombres: Double
    var abandonoMujeres: Int
    var tasaAbandonoMujeres:  Double
    var tasaRetencionMujeres: Double
    var abandonoDiscapacitados: Int
    var tasaAbandonoDiscapacitados:  Double
    var tasaRetencionDiscapacitados: Double
    var abandonoHablantesLenguaIndigena: Int
    var tasaAbandonoHablantesLenguaIndigena: Double
    var tasaRetencionHablantesLenguaIndigena: Double
    var abandonoGeneral: Int
    var tasaAbandonoGeneral:  Double
    var tasaRetencionGeneral: Double
}


