import SwiftUI

struct DropDownEntidadFederativa: View {
    @EnvironmentObject var filtroViewModel : FiltroViewModel
    @State var expand = false
   
    var body: some View {
        VStack{
            HStack{
                Text("Entidad Federativa")
                    .font(.body)
                Spacer()
                HStack{
                    Button(action: {
                        self.expand.toggle()
                    }, label: {
                        Text("\(self.filtroViewModel.entidadFederativaSeleccionado)")
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
                        ForEach(filtroViewModel.entidadesFederativas, id: \.self){ value in
                            Button(action: {
                                self.expand.toggle()
                                self.filtroViewModel.entidadFederativaSeleccionado = value
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
