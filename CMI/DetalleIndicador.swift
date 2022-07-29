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
                    VStack(alignment: .leading){
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
                                
                        if modulo == "Módulo II" || modulo == "Módulo III"{
                            Filtro(mod: modulo)
                        }
                        NavigationLink(destination: Text("Detalle de la ficha con el codigo \(codigoFicha)")){
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
                }
            }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
            
    }.navigationBarHidden(true)
}
}
