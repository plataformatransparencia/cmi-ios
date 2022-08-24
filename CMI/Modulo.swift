import SwiftUI

struct Modulo: View {
    var imagen: String
    var titulo: String
    var texto: String
    var listaIndicadores: [Indicadores]
    var token: String
    var body: some View{
        VStack(spacing: 10){
            Image(imagen)
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(Color("dorado"))
                .padding(.top)
            
            Text(.init(titulo))
                .font(.title3.bold())
                .foregroundColor(Color("gris_2"))
                .padding(.bottom)
                    
            LabelAlignment(text: texto, textAlignmentStyle: .center, width: 240)
                .padding(.bottom)
            
            NavigationLink(destination: DetalleModulo(modulo: titulo, titulo: texto, listaIndicadores: listaIndicadores, token: self.token)) {
                Text("Ver")
                    .font(.headline)
                    .frame(width: 100, height: 40)
                    .foregroundColor(Color("rosita"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color("rosita"), lineWidth: 2)
                    )
            }.padding(.bottom)
        }.padding(.horizontal)
            .frame(width: 260, height: 400)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("dorado"), lineWidth: 5)
            )
    }
}

struct ModuloView_Previews: PreviewProvider {
    static var previews: some View {
        Modulo(imagen: "Image_Modulo_II", titulo: "Modulo II", texto: "Indicadores de la contribución de las Instituciones de los subsistemas de la DGESUI al Programa Sectorial de Educación 2020-2024", listaIndicadores: listaModulo_II, token: "")
    }
}
