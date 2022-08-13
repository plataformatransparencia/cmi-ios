import Foundation


struct GastoFederalEducacionPorcentajePibIesModel : Codable {
    var tabla : TablaGastoFederalEducacionPorcentajePibIes
    var grafica: String
    var referencias: [Referencias]
}

struct TablaGastoFederalEducacionPorcentajePibIes : Codable {
    var registros : [ReegistrosGastoFederalEducacionPorcentajePibIes]
    var pib: Double
    var referencias: [Referencias]
    var aportacion: Double
    var subsidio: Double
}

struct ReegistrosGastoFederalEducacionPorcentajePibIes : Codable {
    var universidad : Universidad
    var aportacionEstatal: Double
    var pibEstado: Double
    var subsidio: Double
}


