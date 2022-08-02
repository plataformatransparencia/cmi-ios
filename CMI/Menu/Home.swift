import SwiftUI

struct Home: View {
    @State var width = UIScreen.main.bounds.width - 90
    @State var x = -UIScreen.main.bounds.width + 90
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                TopBand(x: $x, viewRouter: viewRouter)
                switch viewRouter.currentPage{
                case .login:
                    Login(viewRouter: viewRouter)
                case .inicio:
                    Inicio().position(x: geometry.size.width/2.0, y: geometry.size.height * 0.57)
                case .acercaDe:
                    AcercaDe().position(x: geometry.size.width/2.0, y: geometry.size.height * 0.57)
                case .logout:
                    LogOut()
                }
                
                SlideMenu(viewRouter: viewRouter,x: $x)
                    .shadow(color: Color.black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5, y: 0)
                    .offset(x: x)
                    .background(Color("colorDarkAparenceBackgroundSlide").opacity(x == 0 ? 0.5 : 0).ignoresSafeArea(.all,edges: .vertical)
                        .onTapGesture {
                            withAnimation{
                                x = -width
                            }
                        })
            }
            
            /**.gesture(DragGesture().onChanged({(value) in
             if viewRouter.currentPage == .inicio || viewRouter.currentPage == .acercaDe{
             withAnimation{
             if value.translation.width > 0{
             if x < 0 {
             x = -width + value.translation.width
             }
             }else{
             x = value.translation.width
             }
             }
             }
             
             }).onEnded({ (value) in
             if -x < width / 2{
             x = 0
             }else{
             x = -width
             }
             }))**/
        }
        
    }
    
}

