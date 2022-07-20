import SwiftUI

struct AcercaDe: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            Text("Sobre el Cuadro de Mando Integal")
                .multilineTextAlignment(.center)
                .font(.title3.bold())
                .padding([.top,.bottom])
            
            VStack(alignment: .trailing){
                Text(.init(text_info_acerca_de))
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    
            }.padding([.horizontal,.vertical])
            Spacer()
        }.foregroundColor(Color("gris_2"))
    }
}


struct AcercaDe_Previews: PreviewProvider {
    static var previews: some View {
        AcercaDe()
    }
}
