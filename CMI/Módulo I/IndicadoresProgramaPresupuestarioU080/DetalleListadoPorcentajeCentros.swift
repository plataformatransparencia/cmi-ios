import SwiftUI

struct DetalleListadoPorcentajeCentros: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var titulo: String
    @State var total: Int
    @State var nota: String
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
                        VStack(alignment: .leading, spacing: 15){
                            VStack(alignment: .leading,spacing: 10){
                                Text("Centros y Organizaciones Vinculados a la Educación Susceptibles de Apoyo, los Cuales Contaron con Recursos para Realizar sus Actividades")
                                    .font(.headline.bold())
                                Text("\(formatResult(basedOn: String(total)))")
                                    .font(.body)
                            }
                            VStack(alignment: .leading,spacing: 10){
                                Text("\(nota)")
                                    .font(.body)
                            }
                        }.padding()
                            .foregroundColor(Color("gris_2"))
                    }.padding(.bottom)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                }
                
            }.edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }.navigationBarHidden(true)
    }
}
