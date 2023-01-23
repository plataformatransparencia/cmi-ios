import SwiftUI

struct GraficaExtraordinarioS247: View {
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
                if mouloViewModel.graficaExtraordinarioS247 == [""]{
                    Alert()
                }else{
                    ForEach(mouloViewModel.graficaExtraordinarioS247, id:\.self) { grafica in
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
                        
                        LabelAlignment(text: fichaViewModel.fuenteModIII, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                        .padding(.bottom)
                        
                    }
                    
                }
                
            }
            
            
            
        }.onAppear{
            self.mouloViewModel.loadGraficasModIII(token: self.token, path: path, anio: anio, entidadFederativa: entidadFederativa, subsistema: subsistema, universidad: universidad)
            self.fichaViewModel.loadInfoFichaModIII(token: token, path: path)
            
        }
        .navigationBarHidden(true)
    }
}
