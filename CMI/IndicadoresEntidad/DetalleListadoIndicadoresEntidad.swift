import SwiftUI

struct DetalleListadoIndicadoresEntidad: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var items : [String:String]
    @State var ejercicioFiscal: Int
    @State var cicloDatos: String
    @State var poblacion18A22HombreCobertura: Int
    @State var poblacion18A22MujerCobertura: Int
    @State var poblacion18A22TotalCobertura: Int
    @State var porcentajeCoberturaHombreCobertura: Double
    @State var porcentajeCoberturaMujerCobertura: Double
    @State var tasaBrutaCobertura: Double
    @State var poblacion18A22HombreCobertura2013: Int
    @State var poblacion18A22MujerCobertura2013: Int
    @State var poblacion18A22TotalCobertura2013: Int
    @State var tasaBrutaCobertura2013: Double
    @State var matriculaLicenciaturaNs: Int
    @State var totalMatriculaTsuLicenciaturaNs: Int
    @State var matriculaTsuLicenciaturaHombresNs: Int
    @State var matriculaTsuLicenciaturaMujeresNs: Int
    @State var matriculaEspecialidadNs: Int
    @State var matriculaMaestriaNs: Int
    @State var matriculaDoctoradoNs: Int
    @State var totalMatriculaPosgradoNs: Int
    @State var matriculaPosgradoHombresNs: Int
    @State var matriculaPosgradoMujeresNs: Int
    @State var totalEmsEgresadosPublicoParticularNms: Int
    @State var emsEgresadosPublicoNms: Int
    @State var emsEgresadosPublicoFederalNms: Int
    @State var emsEgresadosPublicoEstatalNms: Int
    @State var emsEgresadosPublicoAutonomoNms: Int
    @State var emsEgresadosParticularNms: Int
    @State var totalPrimerIngresoPublicoParticularNms: Int
    @State var primerIngresoPublicoTsuLicNms: Int
    @State var primerIngresoPaticularTsuLicNms: Int
    @State var totalIndiceAbsorcion: Double
    @State var numeroIesEstadoPublicasParticularesDies: Int
    @State var upeEstadoDies: Int
    @State var upeasEstadoDies: Int
    @State var uiEstadoDies: Int
    @State var matriculaEscolTsuLicPosDesMod: Int
    @State var matriculaNoEscolTsuLicPosDesMod: Int
    @State var matriculaMixtaTsuLicPosDesMod: Int
    @State var totalPtc: Int
    @State var conPerfilDeseableVigente: Int
    @State var conSniVigente: Int
    @State var matriculaDiscapacidadTsuLicPosDesDiscapacidad: Int
    @State var hombresDesDiscapacidad: Int
    @State var mujeresDesDiscapacidad: Int
    @State var matriculaHliTsuLicPosDesHli: Int
    @State var hombresDeshli: Int
    @State var mujeresDeshli: Int
    @State var educacionCmpe: Int
    @State var artesHumanidadesCmpe: Int
    @State var cienciasSocialesDerechoCmpe: Int
    @State var administracionNegociosCmpe: Int
    @State var cienciasNaturalesMatematicasStadisticaCmpe: Int
    @State var teconologiasInformacionComunicacionCmpe: Int
    @State var ingenieriaManufacturaConstruccionCmpe: Int
    @State var agronomiaVeterinariaCmpe: Int
    @State var cienciasSaludCmpe: Int
    @State var serviciosCmpe: Int
    @State var totalMatriculaAreasCmpe: Int
    @State var matriculaCalidadBc: Int
    @State var matriculaTotalBc: Int
    @State var matriculaEvaluableBc: Int
    @State var porcentajeCoberturaTotalCalidadBc: Double
    @State var porcentajeCoberturaEvaluableBc: Double
    @State var upeSubsistema: Int
    @State var upeasSubsistema: Int
    @State var uiSubsistema: Int
    @State var upfSubsistema: Int
    @State var utSubsistema: Int
    @State var upolSubsistema: Int
    @State var institutosTecnologicosSubsistema: Int
    @State var iesEntidadesFederativasSubsistema: Int
    @State var normalesSubsistema: Int
    @State var upnProvinciaSubsistema: Int
    @State var camSubsistema: Int
    @State var particularesSubsistema: Int
    @State var totalSubsistema: Int
    @StateObject var mouloViewModel = ModuloViewModel()
    @State var token: String
    @State var path: String
    @State var anio: String
    @State var entidadFederativa: String
    @State var subsistema: String
    @State var universidad: String
    var body: some View {
        VStack{
            ZStack{
                ScrollView(showsIndicators: true){
                    VStack{
                        HStack{
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "chevron.left")
                                    .font(.title3.bold())
                                
                            })
                            Spacer()
                            Text("\(titulo)")
                                .font(.title3.bold())
                                .multilineTextAlignment(.center)
                            Spacer()
                        }.foregroundColor(Color("gris_2"))
                            .padding([.horizontal, .top])
                        
                        if mouloViewModel.isTrue{
                            ProgressView()
                        }else{
                            ForEach(items.sorted(by: <), id:\.key){key, value in
                                NavigationLink(destination: DetalleItemIndicadoresEntidad(titulo: key, items: items, ejercicioFiscal: ejercicioFiscal, cicloDatos: cicloDatos, poblacion18A22HombreCobertura: poblacion18A22HombreCobertura, poblacion18A22MujerCobertura: poblacion18A22MujerCobertura, poblacion18A22TotalCobertura: poblacion18A22TotalCobertura, porcentajeCoberturaHombreCobertura: porcentajeCoberturaHombreCobertura, porcentajeCoberturaMujerCobertura: porcentajeCoberturaMujerCobertura, tasaBrutaCobertura: tasaBrutaCobertura, poblacion18A22HombreCobertura2013: poblacion18A22HombreCobertura2013, poblacion18A22MujerCobertura2013: poblacion18A22MujerCobertura2013, poblacion18A22TotalCobertura2013: poblacion18A22TotalCobertura2013, tasaBrutaCobertura2013: tasaBrutaCobertura2013, matriculaLicenciaturaNs: matriculaLicenciaturaNs, totalMatriculaTsuLicenciaturaNs: totalMatriculaTsuLicenciaturaNs, matriculaTsuLicenciaturaHombresNs: matriculaTsuLicenciaturaHombresNs, matriculaTsuLicenciaturaMujeresNs: matriculaTsuLicenciaturaMujeresNs, matriculaEspecialidadNs: matriculaEspecialidadNs, matriculaMaestriaNs: matriculaMaestriaNs, matriculaDoctoradoNs: matriculaDoctoradoNs, totalMatriculaPosgradoNs: totalMatriculaPosgradoNs, matriculaPosgradoHombresNs: matriculaPosgradoHombresNs, matriculaPosgradoMujeresNs: matriculaPosgradoMujeresNs, totalEmsEgresadosPublicoParticularNms: totalEmsEgresadosPublicoParticularNms, emsEgresadosPublicoNms: emsEgresadosPublicoNms, emsEgresadosPublicoFederalNms: emsEgresadosPublicoFederalNms, emsEgresadosPublicoEstatalNms: emsEgresadosPublicoEstatalNms, emsEgresadosPublicoAutonomoNms: emsEgresadosPublicoAutonomoNms, emsEgresadosParticularNms: emsEgresadosParticularNms, totalPrimerIngresoPublicoParticularNms: totalPrimerIngresoPublicoParticularNms, primerIngresoPublicoTsuLicNms: primerIngresoPublicoTsuLicNms, primerIngresoPaticularTsuLicNms: primerIngresoPaticularTsuLicNms, totalIndiceAbsorcion: totalIndiceAbsorcion, numeroIesEstadoPublicasParticularesDies: numeroIesEstadoPublicasParticularesDies, upeEstadoDies: upeEstadoDies, upeasEstadoDies: upeasEstadoDies, uiEstadoDies: uiEstadoDies, matriculaEscolTsuLicPosDesMod: matriculaEscolTsuLicPosDesMod, matriculaNoEscolTsuLicPosDesMod: matriculaNoEscolTsuLicPosDesMod, matriculaMixtaTsuLicPosDesMod: matriculaMixtaTsuLicPosDesMod, totalPtc: totalPtc, conPerfilDeseableVigente: conPerfilDeseableVigente, conSniVigente: conSniVigente, matriculaDiscapacidadTsuLicPosDesDiscapacidad: matriculaDiscapacidadTsuLicPosDesDiscapacidad, hombresDesDiscapacidad: hombresDesDiscapacidad, mujeresDesDiscapacidad: mujeresDesDiscapacidad, matriculaHliTsuLicPosDesHli: matriculaHliTsuLicPosDesHli, hombresDeshli: hombresDeshli, mujeresDeshli: mujeresDeshli, educacionCmpe: educacionCmpe, artesHumanidadesCmpe: artesHumanidadesCmpe, cienciasSocialesDerechoCmpe: cienciasSocialesDerechoCmpe, administracionNegociosCmpe: administracionNegociosCmpe, cienciasNaturalesMatematicasStadisticaCmpe: cienciasNaturalesMatematicasStadisticaCmpe, teconologiasInformacionComunicacionCmpe: teconologiasInformacionComunicacionCmpe, ingenieriaManufacturaConstruccionCmpe: ingenieriaManufacturaConstruccionCmpe, agronomiaVeterinariaCmpe: agronomiaVeterinariaCmpe, cienciasSaludCmpe: cienciasSaludCmpe, serviciosCmpe: serviciosCmpe, totalMatriculaAreasCmpe: totalMatriculaAreasCmpe, matriculaCalidadBc: matriculaCalidadBc, matriculaTotalBc: matriculaTotalBc, matriculaEvaluableBc: matriculaEvaluableBc, porcentajeCoberturaTotalCalidadBc: porcentajeCoberturaTotalCalidadBc, porcentajeCoberturaEvaluableBc: porcentajeCoberturaEvaluableBc, upeSubsistema: upeSubsistema, upeasSubsistema: upeasSubsistema, uiSubsistema: uiSubsistema, upfSubsistema: upfSubsistema, utSubsistema: utSubsistema, upolSubsistema: upolSubsistema, institutosTecnologicosSubsistema: institutosTecnologicosSubsistema, iesEntidadesFederativasSubsistema: iesEntidadesFederativasSubsistema, normalesSubsistema: normalesSubsistema, upnProvinciaSubsistema: upnProvinciaSubsistema, camSubsistema: camSubsistema, particularesSubsistema: particularesSubsistema, totalSubsistema: totalSubsistema, graficasIndicadoresEntidad: mouloViewModel.graficasIndicadoresEntidad)){
                                    ItemView(indicador: key)
                                }
                            }
                        }
                        
                    }.padding(.bottom)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }.onAppear{
            self.mouloViewModel.loadGraficasModIII(token: self.token, path: path, anio: anio, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
        }
        .navigationBarHidden(true)
    }
}

