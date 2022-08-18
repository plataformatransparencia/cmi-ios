import SwiftUI

struct AcercaDe: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            Text("Sobre el Cuadro de Mando Integal")
                .multilineTextAlignment(.center)
                .font(.title3.bold())
                .padding([.top,.bottom])
            
            VStack(alignment: .leading){
                LabelAlignment(text: text_info_acerca_de, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                
                Text("Objetivos")
                    .multilineTextAlignment(.center)
                    .font(.title3.bold())
                    .padding([.top, .bottom])
                
                LabelAlignment(text: objetivos_text_info_acerca_de, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                
                Text("Antecedentes")
                    .multilineTextAlignment(.center)
                    .font(.title3.bold())
                    .padding([.top, .bottom])
                
                LabelAlignment(text: antecedentes_text_info_acerca_de, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                
                
                Text("Sustento")
                    .multilineTextAlignment(.center)
                    .font(.title3.bold())
                    .padding([.top, .bottom])
                
                LabelAlignment(text: sustento_text_info_acerca_de, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                
                
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
