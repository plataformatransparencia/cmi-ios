import SwiftUI

struct GraficaEstatalU006: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var graficasEstatalU006 : [String]
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            ForEach(graficasEstatalU006, id:\.self) { grafica in
                HStack{
                    ScrollView(.horizontal, showsIndicators: true){
                        !(grafica.isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: grafica)!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                    }
                }.padding(.bottom)
            }
        }.navigationBarHidden(true)
    }
}