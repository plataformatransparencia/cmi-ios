import SwiftUI

struct GraficaExtraordinarioS247: View {
    @State var graficaExtraordinarioS247 : [String]
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true){
            ForEach(graficaExtraordinarioS247, id:\.self) { grafica in
                HStack{
                    ScrollView(.horizontal, showsIndicators: true){
                        !(grafica.isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: grafica)!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                    }
                }.padding(.bottom)
            }
        }.navigationBarHidden(true)
    }
}
