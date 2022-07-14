import Foundation
class author:Identifiable, Decodable {
    var id:UUID?
    var name = ""
    var quotes:[String] = []
    var image = ""
}
