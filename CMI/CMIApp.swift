import SwiftUI

@main
struct CMIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject var userAuth = AuthUser()
    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: ViewRouter()).environmentObject(userAuth)
        }
    }
}
