import Foundation

enum Program {
    case broadcast(String, URL)
    case stream(String, URL)
    
    enum Key: CodingKey {
        case type
        case name
        case url
    }
    
}
