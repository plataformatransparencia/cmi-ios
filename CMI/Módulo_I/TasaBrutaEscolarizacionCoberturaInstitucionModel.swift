import Foundation

struct TasaBrutaEscolarizacionCoberturaInstitucionModel : Codable {
    var tabla : TablaRegistros
    var graficaTotal: String
    var graficaMujeres: String
    var graficaHombres: String
    var graficaDiscapacitados: String
    var graficaHablantesLenguaIndigena: String
    var graficaEscolarizado: String
    var graficaNoEscolarizado: String
    var graficaMixto: String
    var referencias: [Referencias]
    
}


struct TablaRegistros : Codable {
    var registros: [Registros]
    var referencias: [Referencias]
    var censoNacionalHombres: Int
    var censoNacionalMujeres: Int
    var totalTSUPA: Int
    var totalLicenciatura: Int
    var totalHombres: Int
    var totalMujeres: Int
    var totalDiscapacitados: Int
    var totalHablanteLenguaIndigena: Int
    var totalEscolarizado: Int
    var totalNoEscolarizado: Int
    var totalMixto: Int
    var matriculaTotal: Int
    var contrubucionDGESUI: Double
    var contribucionDGESUIHombres: Double
    var contribucionDGESUIMujeres: Double
    var porcentajeConDiscapacidad: Double
    var porcentajeHablanteLenguaIndigena: Double
    var porcentajeEscolarizado: Double
    var porcentajeNoEscolarizado: Double
    var porcentajeMixto: Double
}


struct Registros : Codable {
    var universidad : Universidad
    var censoEstatalHombres: Int
    var censoEstatalMujeres: Int
    var totalTSUPA: Int
    var totalLicenciatura: Int
    var totalHombres: Int
    var totalMujeres: Int
    var totalDiscapacitados: Int
    var totalHablanteLenguaIndigena: Int
    var totalEscolarizado: Int
    var totalNoEscolarizado: Int
    var totalMixto: Int
    var matriculaTotal: Int
    var contribucionDGESUI: Double
    var contribucionDGESUIHombres: Double
    var contribucionDGESUIMujeres: Double
    var porcentajeConDiscapacidad: Double
    var porcentajeHablanteLenguaIndigena: Double
    var porcentajeEscolarizado: Double
    var porcentajeNoEscolarizado: Double
    var porcentajeMixto: Double
}


struct Universidad : Codable {
    var clave: String
    var numero: Int
    var tipo: String
    var nombre: String
    var siglas: String
    var entidadFederativa: ValorEntidades
}


