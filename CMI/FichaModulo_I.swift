import SwiftUI

struct FichaModulo_I: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var titulo: String
    var lista = [ElementosFichas]()
    var body: some View {
        
        VStack{
            ZStack{
                ScrollView(showsIndicators: true){
                    VStack{
                        HStack{
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "chevron.left")
                                    .font(.title3.bold())
                            })
                            Spacer()
                            Text("\(titulo)")
                                .font(.title3.bold())
                                .multilineTextAlignment(.center)
                            Spacer()
                            
                        }.padding([.horizontal, .top])
                        
                        
                        Text("Elementos del indicador o parámetro")
                            .font(.title3.bold())
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        
                        VStack(alignment: .leading){
                            VStack(spacing: 15){
                                ForEach(self.lista){value in
                                    GroupItem(titulo: value.titulo, texto: value.texto)
                                }
                            }
                        }.padding()
                        
                        
                        Text("Aplicación del método de cálculo del indicador para la obtención del valor de la línea base")
                            .font(.title3.bold())
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        
                        Text("Valor de línea base y metas")
                            .font(.title3.bold())
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        
                    }.foregroundColor(Color("gris_2"))
                    
                    
                }
            }
            
        }.navigationBarHidden(true)
        
        
        
        
        
    }
}



