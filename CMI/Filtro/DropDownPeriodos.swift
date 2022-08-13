import SwiftUI

struct DropDownPeriodos: View {
    @State var periodos : [String:String] = ["2019 - 2020":"2019 - 2020", "2020 - 2021":"2020 - 2021", "2021 - 2022":"2021 - 2022", "2022 - 2023":"2022 - 2023"]
    @State var expand = false
    @State var selected: String = "Selecciona"
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
                        Text("\(self.selected)")
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
                        ForEach(periodos.sorted(by: {$0.0 > $1.0}), id: \.key){ key, value in
                            Button(action: {
                                self.expand.toggle()
                                self.selected = key
                            }){
                                VStack{
                                    Text(key)
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
