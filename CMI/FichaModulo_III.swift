import SwiftUI

struct FichaModulo_III: View {
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
                        
                        Button(action: {
                            print("descarga de PDF")
                        }){
                            Image("Image_PDF")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }.padding(.horizontal)
                        
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
                    }.foregroundColor(Color("gris_2"))
                    
                    
                }
            }
            
        }.navigationBarHidden(true)
    }
}
