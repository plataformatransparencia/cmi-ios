import SwiftUI

struct GraficaPorcentajeCuerposAcademicosIES: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject var mouloViewModel = ModuloViewModel()
    @State var token: String
    @State var path: String
    @State var anio: String
    @State var entidadFederativa: String
    @State var subsistema: String
    @State var universidad: String
    @StateObject var fichaViewModel = FichaViewModel()
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            if mouloViewModel.isTrue{
                ProgressView()
            }else{
                ForEach(mouloViewModel.unionPorcentajeCuerposAcademicosIES, id:\.self) { grafica in
                    HStack{
                        ScrollView(.horizontal, showsIndicators: true){
                            !(grafica.isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: grafica)!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                        }
                    }.padding(.bottom)
                }
                VStack(alignment: .leading){
                    HStack{
                        Text("Fuente")
                            .font(.headline.bold())
                        Spacer()
                    }.padding(.bottom)
                    ForEach(fichaViewModel.fuentesModII, id:\.fuente) { f in
                        LabelAlignment(text: f.fuente, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                .padding(.bottom)
                    }
                }
                
            }
        }.onAppear{
            self.mouloViewModel.loadGraficasModII(token: self.token, path: path, anio: anio, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
            self.mouloViewModel.loadGraficasModII(token: self.token, path: "\(path)/subsistema", anio: anio, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
            self.fichaViewModel.loadInfoFichaModII(token: self.token, path: path)
            
        }
        .navigationBarHidden(true)
    }
}
