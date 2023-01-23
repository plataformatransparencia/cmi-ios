struct PorcentajeCuerposAcademicosIESUniversidad: Codable {
    var universidad: Universidad
    var evaluados: String
    var subenGrado: String
    var porcentaje: String
}


struct PorcentajeCuerposAcademicosIESSubistema: Codable {
    var subsistema: String
    var totalEvaluados: String
    var totalSubenGrado: String
    var totalPorcentaje: String
}
