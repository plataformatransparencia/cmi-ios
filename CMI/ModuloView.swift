import SwiftUI

struct ModuloView: View {
    
    var body: some View {
            HStack(alignment: .center, spacing: 10){
                Modulo(imagen: "Image_Modulo_I", titulo: "Módulo I", texto: "Indicadores de la contribución de las Instituciones de los subsistemas de la DGESUI al Programa Sectorial de Educación 2020-2024", listaIndicadores: listaModulo_I)
                Modulo(imagen: "Image_Modulo_II", titulo: "Módulo II", texto: "Indicadores de las Matrices de Indicadores para Resultados (MIR) de los programas presupuestales que opera la DGESUI", listaIndicadores: listaModulo_II)
            }.padding(.top)
            HStack{
                Modulo(imagen: "Image_Modulo_III", titulo: "Módulo III", texto: "Repositorio de Datos Estadísticos (RDE) de la DGESUI", listaIndicadores: listaModulo_III)
            }.padding(.bottom)
    }
    
    
}

struct Modulo: View {
    var imagen: String
    var titulo: String
    var texto: String
    var listaIndicadores: [String]
    var body: some View{
        VStack(spacing: 15){
            Image(imagen)
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(Color("dorado"))
            
            Text(.init(titulo))
                .font(.title3.bold())
                .foregroundColor(Color("gris_2"))
            
            Text(.init(texto))
                .multilineTextAlignment(.center)
                .font(.body)
                .foregroundColor(Color("gris_2"))
            
            NavigationLink(destination: DetalleModulo(modulo: titulo, titulo: texto, listaIndicadores: listaIndicadores)) {
                Text("Ver")
                    .font(.headline)
                    .frame(width: 80, height: 40)
                    .foregroundColor(Color("rosita"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color("rosita"), lineWidth: 2)
                        )
            }
        }.padding(.horizontal)
        .frame(width: 200, height: 400)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color("dorado"), lineWidth: 5)
            )
    }
}

struct ModuloView_Previews: PreviewProvider {
    static var previews: some View {
            ModuloView()
    }
}
