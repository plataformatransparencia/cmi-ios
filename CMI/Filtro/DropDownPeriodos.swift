import SwiftUI

struct DropDownPeriodos: View {
    @EnvironmentObject var filtroViewModel : FiltroViewModel
    @State var expand = false
    var body: some View {
        VStack{
            HStack{
                Text("Periodo")
                    .font(.body)
                Spacer()
                HStack{
                    Button(action: {
                        self.expand.toggle()
                        
                    }, label: {
                        Text("\(self.filtroViewModel.seleccionado)")
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
                        ForEach(self.filtroViewModel.filtros, id: \.self){ value in
                            Button(action: {
                                self.expand.toggle()
                                self.filtroViewModel.seleccionado = value
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
