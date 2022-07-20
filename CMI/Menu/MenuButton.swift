import SwiftUI

struct MenuButton: View {
    var image: String
    var title : String
    
    var body: some View{
        HStack(spacing: 15){
            Image(systemName: image)
                .resizable()
                .renderingMode(.template)
                .frame(width: 30, height: 30)
            Text("\(title)")
                .font(.headline)
            Spacer(minLength: 0)
        }
        .foregroundColor(Color("colorNegro"))
        .padding()
        
    }
}

struct IconAndTitle: Identifiable{
    var icon: String
    var title: String
    var pagina: Page
    let id = UUID()
}


