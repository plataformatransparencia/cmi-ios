import SwiftUI

struct DropDownEjercicioFiscal: View {
    @State var ejerciciosFiscales = [String:String]()
    @State var expand = false
    @State var selected: String = "Selecciona"
    var body: some View {
        VStack{
            HStack{
                Text("Ejercicio Fiscal")
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
                        ForEach(ejerciciosFiscales.sorted(by: {$0.0 > $1.0}), id: \.key){ key, value in
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
                            }.foregroundColor(.black)
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

struct DropDownEjercicioFiscal_Previews: PreviewProvider {
    static var previews: some View {
        DropDownEjercicioFiscal()
    }
}
