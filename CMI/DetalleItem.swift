import SwiftUI

struct DetalleItem: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var titulo: String
    var texto : String
    var ImagenGrafica : String
    var referencias : [Referencias]
    @EnvironmentObject var excelViewModel : ExcelViewModel
    var token: String
    var path : String
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
                                self.excelViewModel.downloadExcel(token: self.token, path: self.path, periodo: "2019%20-%202020")
                            }){
                                Image("Image_Excel")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }.padding(.horizontal)
                        }
                        
                        HStack{
                            LabelAlignment(text: texto, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                        }
                        HStack{
                            ScrollView(.horizontal, showsIndicators: true){
                                !(ImagenGrafica.isEmpty) ? Image(uiImage: UIImage(data: (Data(base64Encoded: ImagenGrafica)!))!) :  Image(uiImage: UIImage(data: (Data(base64Encoded: imagenDefault)!))!)
                            }
                        }
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("Fuente")
                                    .font(.headline.bold())
                                Spacer()
                            }.padding(.bottom)
                            ForEach(referencias, id: \.id){ i in
                                if i.url != ""{
                                    Button(action: {
                                        UIApplication.shared.open(URL(string: i.url)!)
                                    }){
                                        LabelAlignmentLink(text: i.texto, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                            .padding(.bottom)
                                    }
                                }else{
                                    LabelAlignment(text: i.texto, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 20)
                                        .padding(.bottom)
                                }
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

