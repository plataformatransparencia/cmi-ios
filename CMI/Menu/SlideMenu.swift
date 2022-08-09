import SwiftUI

struct SlideMenu: View {
    @EnvironmentObject var userAuth: AuthUser
    let menuButtons = [
        IconAndTitle(icon: "homekit", title: "Inicio", pagina: .inicio),
        IconAndTitle(icon: "info.circle", title: "Acerca de CMI", pagina: .acercaDe),
        IconAndTitle(icon: "rectangle.portrait.and.arrow.right", title: "Cerrar Sesión", pagina: .inicio)
    ]
    
    @StateObject var viewRouter: ViewRouter
    @Binding var x : CGFloat
    
    var body: some View {
        HStack(spacing: 0){
            VStack(alignment: .leading){
                HStack(alignment: .center, spacing: 12){
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                    
                    Text("José Ángel Esquivel Islas")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    Spacer(minLength: 0)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color("verdeHeader"))
                
                VStack(alignment: .leading){
                    ForEach(menuButtons){value in
                        Button(action: {
                            
                        }){
                            
                            MenuButton(image: value.icon, title: value.title)
                                .onTapGesture {
                                    withAnimation{
                                        if value.title == "Cerrar Sesión"{
                                            userAuth.logout(token: self.userAuth.token, refresToken: self.userAuth.refreshToken)
                                        }
                                        
                                        viewRouter.currentPage = value.pagina
                                        x = -UIScreen.main.bounds.width - 90
                                    }
                                }
                        }
                        Divider()
                    }
                }
                Spacer(minLength: 0)
            }.ignoresSafeArea(.all, edges: .horizontal)
                .padding(.top, UIApplication
                    .shared
                    .connectedScenes
                    .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                    .first { $0.isKeyWindow }?.safeAreaInsets.top)
                .padding(.bottom, UIApplication
                    .shared
                    .connectedScenes
                    .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                    .first { $0.isKeyWindow }?.safeAreaInsets.bottom)
                .frame(width: UIScreen.main.bounds.width - 90)
                .background(Color("colorDarkAparence"))
                .ignoresSafeArea(.all,edges: .vertical)
            Spacer(minLength: 0)
        }
    }
}







