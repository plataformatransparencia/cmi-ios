import SwiftUI

struct Inicio: View {
    var paragraphStyle: NSParagraphStyle {
      let style = NSMutableParagraphStyle()
      style.alignment = .right
      return style
    }
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: true){
                Text("Módulos de Información")
                    .multilineTextAlignment(.center)
                    .font(.title3.bold())
                    .padding([.top,.bottom])
                VStack(alignment: .center){
                    LabelAlignment(text: text_info_inicio, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                }.padding([.horizontal,.vertical])
                ScrollView(.horizontal, showsIndicators: true){
                    HStack(alignment: .center, spacing: 10){
                        Modulo(imagen: "Image_Modulo_I", titulo: "Módulo I", texto: "Indicadores de la contribución de las Instituciones de los subsistemas de la DGESUI al Programa Sectorial de Educación 2020-2024", listaIndicadores: listaModulo_I)
                        Modulo(imagen: "Image_Modulo_II", titulo: "Módulo II", texto: "Indicadores de las Matrices de Indicadores para Resultados (MIR) de los programas presupuestales que opera la DGESUI", listaIndicadores: listaModulo_II)
                        Modulo(imagen: "Image_Modulo_III", titulo: "Módulo III", texto: "Repositorio de Datos Estadísticos (RDE) de la DGESUI", listaIndicadores: listaModulo_III)
                    }.padding()
                }
                
            }.foregroundColor(Color("gris_2"))
                .navigationBarHidden(true)
        }.padding(.bottom)
    }
}




struct Inicio_Previews: PreviewProvider {
    static var previews: some View {
        Inicio()
    }
}


