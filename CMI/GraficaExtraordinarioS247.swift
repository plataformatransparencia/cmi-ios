import SwiftUI

struct GraficaExtraordinarioS247: View {
    @State var graficaExtraordinarioS247 : String
    var body: some View {
        HStack{
            ScrollView(.horizontal, showsIndicators: true){
                !(graficaExtraordinarioS247.isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficaExtraordinarioS247)!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
            }
        }.padding(.bottom)
    }
}
