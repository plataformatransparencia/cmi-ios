import Foundation
import SwiftUI


struct LoginModel: Codable {
    
    var accessToken : String
    var expiresIn : Int
    var refreshExpiresIn : Int
    var refreshToken : String
    var tokenType : String
    var notBeforePolicy : Int
    var sessionState : String
    var scope : String
    
    
    enum CodingKeys : String, CodingKey {
        case accessToken = "access_token"
        case expiresIn = "expires_in"
        case refreshExpiresIn = "refresh_expires_in"
        case refreshToken = "refresh_token"
        case tokenType = "token_type"
        case notBeforePolicy = "not-before-policy"
        case sessionState = "session_state"
        case scope = "scope"
    }
    
}


struct bodyModel : Decodable{
    var username: String
    var password: String
    var client_id: String
    var grant_type:String
}

