import Foundation


struct TasaBrutaEscolarizacionCoberturaEntidadFederativaModel : Codable{
    var tabla : TablaEF
    var graficaTotal: String
    var graficaMujeres: String
    var graficaHombres: String
    var referencias: [Referencias]
}

struct TablaEF: Codable {
    var registros : [EntidadesEF]
    var referencias: [Referencias]
    var matriculaHombres : Int
    var matriculaMujeres : Int
    var matriculaTotal : Int
    var censoHombres : Int
    var censoMujeres : Int
    var censoTotal : Int
    var contribucion : Double
    var contribucionHombres : Double
    var contribucionMujeres : Double
}

struct EntidadesEF: Codable{
    var entidadFederativa : ValorEntidades
    var  matriculaHombres : Int
    var  matriculaMujeres : Int
    var  censoHombres : Int
    var  censoMujeres : Int
    var  matriculaTotal : Int
    var  censoTotal : Int
    var  contribucion : Double
    var  contribucionHombres : Double
    var  contribucionMujeres : Double
}
