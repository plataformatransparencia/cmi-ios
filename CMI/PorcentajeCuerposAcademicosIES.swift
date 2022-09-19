struct PorcentajeCuerposAcademicosIESUniversidad: Codable {
    var universidad: Universidad
    var evaluados: Int
    var subenGrado: Int
    var porcentaje: Double
}


struct PorcentajeCuerposAcademicosIESSubistema: Codable {
    var subsistema: String
    var totalEvaluados: Int
    var totalSubenGrado: Int
    var totalPorcentaje: Double
}
