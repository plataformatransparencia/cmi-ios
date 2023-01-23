import SwiftUI

struct ListadoIndicadoresEntidad: View {
    @State var items : [String:String]
    @StateObject var mouloViewModel = ModuloViewModel()
    @StateObject var fichaViewModel = FichaViewModel()
    @State var token: String
    @State var path: String
    @State var anio: String
    @State var entidadFederativa: String
    @State var subsistema: String
    @State var universidad: String
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            
            if mouloViewModel.isTrue{
                ProgressView()
            }else{
                if mouloViewModel.indicadoresEntidad.isEmpty{
                    Alert()
                    
                }else{
                    ForEach(mouloViewModel.indicadoresEntidad, id:\.entidadFederativa.id) { n in
                        NavigationLink(destination: DetalleListadoIndicadoresEntidad(titulo: n.entidadFederativa.valor, items: items, ejercicioFiscal: n.ejercicioFiscal, cicloDatos: n.cicloDatos, poblacion18A22HombreCobertura: n.poblacion18A22HombreCobertura, poblacion18A22MujerCobertura: n.poblacion18A22MujerCobertura, poblacion18A22TotalCobertura: n.poblacion18A22TotalCobertura, porcentajeCoberturaHombreCobertura: n.porcentajeCoberturaHombreCobertura, porcentajeCoberturaMujerCobertura: n.porcentajeCoberturaMujerCobertura, tasaBrutaCobertura: n.tasaBrutaCobertura, poblacion18A22HombreCobertura2013: n.poblacion18A22HombreCobertura2013, poblacion18A22MujerCobertura2013: n.poblacion18A22MujerCobertura2013, poblacion18A22TotalCobertura2013: n.poblacion18A22TotalCobertura2013, tasaBrutaCobertura2013: n.tasaBrutaCobertura2013, matriculaLicenciaturaNs: n.matriculaLicenciaturaNs, totalMatriculaTsuLicenciaturaNs: n.totalMatriculaTsuLicenciaturaNs, matriculaTsuLicenciaturaHombresNs: n.matriculaTsuLicenciaturaHombresNs, matriculaTsuLicenciaturaMujeresNs: n.matriculaTsuLicenciaturaMujeresNs, matriculaEspecialidadNs: n.matriculaEspecialidadNs, matriculaMaestriaNs: n.matriculaMaestriaNs, matriculaDoctoradoNs: n.matriculaDoctoradoNs, totalMatriculaPosgradoNs: n.totalMatriculaPosgradoNs, matriculaPosgradoHombresNs: n.matriculaPosgradoHombresNs, matriculaPosgradoMujeresNs: n.matriculaPosgradoMujeresNs, totalEmsEgresadosPublicoParticularNms: n.totalEmsEgresadosPublicoParticularNms, emsEgresadosPublicoNms: n.emsEgresadosPublicoNms, emsEgresadosPublicoFederalNms: n.emsEgresadosPublicoFederalNms, emsEgresadosPublicoEstatalNms: n.emsEgresadosPublicoEstatalNms, emsEgresadosPublicoAutonomoNms: n.emsEgresadosPublicoAutonomoNms, emsEgresadosParticularNms: n.emsEgresadosParticularNms, totalPrimerIngresoPublicoParticularNms: n.totalPrimerIngresoPublicoParticularNms, primerIngresoPublicoTsuLicNms: n.primerIngresoPublicoTsuLicNms, primerIngresoPaticularTsuLicNms: n.primerIngresoPaticularTsuLicNms, totalIndiceAbsorcion: n.totalIndiceAbsorcion, numeroIesEstadoPublicasParticularesDies: n.numeroIesEstadoPublicasParticularesDies, upeEstadoDies: n.upeEstadoDies, upeasEstadoDies: n.upeasEstadoDies, uiEstadoDies: n.uiEstadoDies, matriculaEscolTsuLicPosDesMod: n.matriculaEscolTsuLicPosDesMod, matriculaNoEscolTsuLicPosDesMod: n.matriculaNoEscolTsuLicPosDesMod, matriculaMixtaTsuLicPosDesMod: n.matriculaMixtaTsuLicPosDesMod, totalPtc: n.totalPtc, conPerfilDeseableVigente: n.conPerfilDeseableVigente, conSniVigente: n.conSniVigente, matriculaDiscapacidadTsuLicPosDesDiscapacidad: n.matriculaDiscapacidadTsuLicPosDesDiscapacidad, hombresDesDiscapacidad: n.hombresDesDiscapacidad, mujeresDesDiscapacidad: n.mujeresDesDiscapacidad, matriculaHliTsuLicPosDesHli: n.matriculaHliTsuLicPosDesHli, hombresDeshli: n.hombresDeshli, mujeresDeshli: n.mujeresDeshli, educacionCmpe: n.educacionCmpe, artesHumanidadesCmpe: n.artesHumanidadesCmpe, cienciasSocialesDerechoCmpe: n.cienciasSocialesDerechoCmpe, administracionNegociosCmpe: n.administracionNegociosCmpe, cienciasNaturalesMatematicasStadisticaCmpe: n.cienciasNaturalesMatematicasStadisticaCmpe, teconologiasInformacionComunicacionCmpe: n.teconologiasInformacionComunicacionCmpe, ingenieriaManufacturaConstruccionCmpe: n.ingenieriaManufacturaConstruccionCmpe, agronomiaVeterinariaCmpe: n.agronomiaVeterinariaCmpe, cienciasSaludCmpe: n.cienciasSaludCmpe, serviciosCmpe: n.serviciosCmpe, totalMatriculaAreasCmpe: n.totalMatriculaAreasCmpe, matriculaCalidadBc: n.matriculaCalidadBc, matriculaTotalBc: n.matriculaTotalBc, matriculaEvaluableBc: n.matriculaEvaluableBc, porcentajeCoberturaTotalCalidadBc: n.porcentajeCoberturaTotalCalidadBc, porcentajeCoberturaEvaluableBc: n.porcentajeCoberturaEvaluableBc, upeSubsistema: n.upeSubsistema, upeasSubsistema: n.upeasSubsistema, uiSubsistema: n.uiSubsistema, upfSubsistema: n.upfSubsistema, utSubsistema: n.utSubsistema, upolSubsistema: n.upolSubsistema, institutosTecnologicosSubsistema: n.institutosTecnologicosSubsistema, iesEntidadesFederativasSubsistema: n.iesEntidadesFederativasSubsistema, normalesSubsistema: n.normalesSubsistema, upnProvinciaSubsistema: n.upnProvinciaSubsistema, camSubsistema: n.camSubsistema, particularesSubsistema: n.particularesSubsistema, totalSubsistema: n.totalSubsistema, token: token, path: path, anio:anio, entidadFederativa: entidadFederativa, subsistema:subsistema, universidad: n.entidadFederativa.valor,fuentes:fichaViewModel.fuenteModIII), label: {
                            VStack(alignment: .leading){
                                HStack{
                                    Text("\(n.entidadFederativa.valor)")
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                }
                                .font(.body)
                                .foregroundColor(Color("gris_2"))
                            }.padding([.top, .horizontal])
                        })
                    }
                }
                
            }
            
            
            
        }.onAppear{
            self.mouloViewModel.loadInfoModIII(token: self.token, path: path, anio: anio, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
            self.fichaViewModel.loadInfoFichaModIII(token: token, path: path)
            
        }
        .navigationBarHidden(true)
    }
}

