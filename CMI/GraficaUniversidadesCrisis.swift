import SwiftUI

struct GraficaUniversidadesCrisis: View {
    @State var graficaUniversidadesCrisis : String
    var body: some View {
        HStack{
            ScrollView(.horizontal, showsIndicators: true){
                !(graficaUniversidadesCrisis.isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: graficaUniversidadesCrisis)!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
            }
        }.padding(.bottom)
    }
}
