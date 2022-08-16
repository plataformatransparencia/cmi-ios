import SwiftUI

struct DetalleItem: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var titulo: String
    var texto : String
    var ImagenGrafica : String
    var body: some View {
        VStack(){
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
                    }
                    
                    VStack(alignment: .leading, spacing: 15){
                        HStack{
                            Text("Nacional")
                                .font(.headline.bold())
                            Spacer()
                            Button(action: {
                                print("descarga de excel")
                            }){
                                Image("Image_Excel")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }.padding(.horizontal)
                        }
                        
                        HStack{
                            Text(texto)
                                .font(.body.bold())
                                .multilineTextAlignment(.leading)
                            
                        }
                        HStack{
                            ScrollView(.horizontal, showsIndicators: true){
                                !(ImagenGrafica.isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: ImagenGrafica)!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                            }
                        }
                        
                    }.padding()
                    
                }.foregroundColor(Color("gris_2"))
                    .edgesIgnoringSafeArea(.all)
                    .navigationBarHidden(true)
            }
            
        }.navigationBarHidden(true)
    }
}

