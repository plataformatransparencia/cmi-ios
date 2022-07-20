import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        Home(viewRouter: viewRouter)
    }
}


