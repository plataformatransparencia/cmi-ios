import Foundation


struct GastoFederalEducacionPorcentajePibEntidadModel : Codable {
    var tabla : TablaGastoFederalEducacionPorcentajePibEntidad
    var grafica: String
    var referencias: [Referencias]
}

struct TablaGastoFederalEducacionPorcentajePibEntidad : Codable {
    var registros : [ReegistrosGastoFederalEducacionPorcentajePibEntidad]
    var pib: Double
    var referencias: [Referencias]
    var aportacionEstatalTotal: Double
    var subsidio: Double
}

struct ReegistrosGastoFederalEducacionPorcentajePibEntidad : Codable {
    var entidadFederativa : ValorEntidades
    var aportacionEstatal: Double
    var pibEstado: Double
    var subsidio: Double
}
