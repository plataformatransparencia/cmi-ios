import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .inicio
}

enum Page{
    case login
    case inicio
    case acercaDe
    case logout
}

