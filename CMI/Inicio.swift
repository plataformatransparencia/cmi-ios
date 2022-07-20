import SwiftUI

struct Inicio: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            Text("Módulos de Información")
                .multilineTextAlignment(.center)
                .font(.title3.bold())
                .padding([.top,.bottom])
            
            VStack(alignment: .trailing){
                Text(.init(text_info_inicio))
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    
            }.padding([.horizontal,.vertical])
            Spacer()
        }.foregroundColor(Color("gris_2"))
        NavigationView{
            ScrollView(.vertical, showsIndicators: true){
                Text("Módulos de Información")
                    .multilineTextAlignment(.center)
                    .font(.title3.bold())
                    .padding([.top,.bottom])
                
                VStack(alignment: .center){
                    Text(.init(text_info_inicio))
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }.padding([.horizontal,.vertical])
                ModuloView()
            }.foregroundColor(Color("gris_2"))
                .navigationBarHidden(true)
        }
    }
}


struct Inicio_Previews: PreviewProvider {
    static var previews: some View {
        Inicio()
    }
}


