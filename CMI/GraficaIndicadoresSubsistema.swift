import SwiftUI

struct GraficaIndicadoresSubsistema: View {
    @StateObject var mouloViewModel = ModuloViewModel()
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
                if mouloViewModel.graficasIndicadoresSubsistema == [""]{
                    Alert()
                }else{
                    ForEach(mouloViewModel.graficasIndicadoresSubsistema, id:\.self) { grafica in
                        HStack{
                            ScrollView(.horizontal, showsIndicators: true){
                                !(grafica.isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: grafica)!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                            }
                        }.padding(.bottom)
                    }
                }
            }
            
            
        }.onAppear{
            self.mouloViewModel.loadGraficasModIII(token: self.token, path: path, anio: anio, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
        }
        .navigationBarHidden(true)
    }
}
