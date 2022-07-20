import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .login
}

enum Page{
    case login
    case inicio
    case acercaDe
    case logout
}

