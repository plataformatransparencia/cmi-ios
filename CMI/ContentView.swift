import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @EnvironmentObject var userAuth: AuthUser
    var body: some View {
        if !userAuth.isLoggedin {
            return AnyView(Login())
        }else{
            return AnyView(Home(viewRouter: viewRouter))
        }
    }
}
