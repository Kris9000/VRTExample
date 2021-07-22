import SwiftUI

class ProgramViewModel: ViewModel {
    
    var name: String
    var iconName: String
    var url: URL
    
    init(program: Program) {
        switch program {
        case .broadcast(let name, let url):
            self.name = name
            self.url = url
            self.iconName = "play.tv"
        case .stream(let name, let url):
            self.name = name
            self.url = url
            self.iconName = "play"
        }
    }
    
}

extension ProgramViewModel: Equatable {
    static func == (lhs: ProgramViewModel, rhs: ProgramViewModel) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
}
extension ProgramViewModel: Hashable {
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ObjectIdentifier(self))
    }
}
