
import Foundation

struct Modelo2: Decodable {
    var data: [UserList]
}

struct User: Decodable {
    var data: UserList
}

struct UserList: Decodable {
    var id: Int
    var first_name: String
    var email: String
    var avatar: String
}

