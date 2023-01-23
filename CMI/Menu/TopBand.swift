import SwiftUI

struct TopBand: View {
    @Binding var x : CGFloat
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            HStack{
                
                if viewRouter.currentPage == .inicio || viewRouter.currentPage == .acercaDe {
                    Button(action: {
                        withAnimation{
                            x = 0
                        }
                    }){
                        
                        Image(systemName: "line.horizontal.3")
                            .font(.title2)
                            
                    }
                }
               
                Spacer(minLength: 0)
                
                Text("Cuadro de Mando Integral")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    
                
                Spacer(minLength: 0)
            }
            .foregroundColor(.white)
            .padding()
            .background(Color("verdeHeader"))
            
            Spacer()
        }
        .contentShape(Rectangle())
        .background(Color("colorDarkAparence"))
    }
}
