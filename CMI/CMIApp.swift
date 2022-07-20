import SwiftUI

@main
struct CMIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: ViewRouter())
        }
    }
}
