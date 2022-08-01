import SwiftUI

struct Modulo: View {
    var imagen: String
    var titulo: String
    var texto: String
    var listaIndicadores: [Indicadores]
    var body: some View{
        VStack(spacing: 10){
            Image(imagen)
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(Color("dorado"))
                .padding()
            
            
            Text(.init(titulo))
                .font(.title3.bold())
                .foregroundColor(Color("gris_2"))
                    
            Spacer()
            Text(.init(texto))
                .multilineTextAlignment(.center)
                .font(.body)
                .foregroundColor(Color("gris_2"))
                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            Spacer()
            NavigationLink(destination: DetalleModulo(modulo: titulo, titulo: texto, listaIndicadores: listaIndicadores)) {
                Text("Ver")
                    .font(.headline)
                    .frame(width: 100, height: 40)
                    .foregroundColor(Color("rosita"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color("rosita"), lineWidth: 2)
                    )
            }.padding()
        }.padding(.horizontal)
            .frame(width: 250, height: 450)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("dorado"), lineWidth: 5)
            )
    }
}

struct ModuloView_Previews: PreviewProvider {
    static var previews: some View {
        Modulo(imagen: "Image_Modulo_II", titulo: "Modulo II", texto: "Indicadores de las Matrices de Indicadores para Resultados (MIR) de los programas presupuestales que opera la DGESUI", listaIndicadores: listaModulo_II)
    }
}
