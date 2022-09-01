import Foundation


struct UniversidadesCrisis : Codable{
    var universidad: Universidad
    var montoPublico: Double
    var totalMinistrado: Double
    var montoConvenioSEP: Double
    var montoMinistradoSEP: Double
    var fechaEjecucionSEP: String
    var observacionFederal: String
    var montoConvenioEstado: Double
    var totalMinistradoEstado: Double
    var ministraciones : [Ministraciones]
}


struct Ministraciones : Codable {
    var monto: Double
    var fechaEjecucion: String
    var observacion: String
}
