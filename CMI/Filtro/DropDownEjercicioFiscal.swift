import SwiftUI

struct DropDownEjercicioFiscal: View {
    @EnvironmentObject var filtroViewModel : FiltroViewModel
    @State var expand = false
    var body: some View {
        VStack{
            HStack{
                Text(self.filtroViewModel.anioSeleccionado.contains("-") ? "Periodo" : "Ejercicio Fiscal")
                    .font(.body)
                Spacer()
                HStack{
                    Button(action: {
                        self.expand.toggle()
                    }, label: {
                        Text("\(self.filtroViewModel.anioSeleccionado)")
                            .font(.body)
                        Image(systemName: expand ? "chevron.up" :  "chevron.down")
                            .resizable()
                            .frame(width: 20, height: 10)
                    })
                }
            }.foregroundColor(Color("gris_2"))
            ScrollView(showsIndicators: false){
                VStack(alignment: .center, spacing: 18, content: {
                    if expand {
                        ForEach(filtroViewModel.anios, id: \.self){ value in
                            Button(action: {
                                self.expand.toggle()
                                self.filtroViewModel.anioSeleccionado = value
                            }){
                                VStack{
                                    Text(value)
                                        .font(.titulo())
                                        .padding(.top, -13)
                                    Divider()
                                }
                            }.foregroundColor(Color("gris_2"))
                        }
                    }
                }).padding(.top, 11)
                    .onTapGesture {
                        withAnimation(.spring()){}
                    }
            
            }.frame(height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    withAnimation(.default){}
                }
        }
    }
}
