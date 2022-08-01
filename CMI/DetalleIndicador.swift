import SwiftUI

struct DetalleIndicador: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var titulo: String
    @State var modulo: String
    @State var items : [String]
    @State var codigoFicha: String
    @State var nombreFicha: String
    
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
                            
                        }.foregroundColor(Color("gris_2"))
                            .padding([.horizontal, .top])
                        
                        switch modulo{
                        case "Módulo I":
                            NavigationLink(destination: FichaModulo_I(titulo: nombreFicha)){
                                Text("\(nombreFicha)")
                                    .font(.body)
                                    .underline()
                                    .multilineTextAlignment(.center)
                                    .padding()
                            }
                            ForEach(items, id:\.self){i in
                                NavigationLink(destination: Text("Vista del tab \(i)")){
                                    ItemView(indicador: i)
                                }
                            }
                            
                        case "Módulo II":
                            Filtro(mod: modulo)
                            HStack(alignment: .center){
                                NavigationLink(destination: FichaModulo_II(titulo: nombreFicha)){
                                    Text("\(nombreFicha)")
                                        .font(.body)
                                        .underline()
                                        .multilineTextAlignment(.leading)
                                }.padding(.horizontal)
                                Spacer()
                                Button(action: {
                                    print("descarga de excel")
                                }){
                                    Image("Image_Excel")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                }.padding(.horizontal)
                            }
                            
                        case "Módulo III":
                            Filtro(mod: modulo)
                            HStack(alignment: .center){
                                NavigationLink(destination: FichaModulo_III(titulo: nombreFicha)){
                                    Text("\(nombreFicha)")
                                        .font(.body)
                                        .underline()
                                        .multilineTextAlignment(.leading)
                                }.padding(.horizontal)
                                Spacer()
                                Button(action: {
                                    print("descarga de excel")
                                }){
                                    Image("Image_Excel")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                }.padding(.horizontal)
                            }
                        default:
                            EmptyView()
                        }
                    }
                }.edgesIgnoringSafeArea(.all)
                    .navigationBarHidden(true)
            }
            
        }.navigationBarHidden(true)
    }
}
