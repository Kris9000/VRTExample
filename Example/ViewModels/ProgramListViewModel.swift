import Foundation
import Combine

class ProgramListViewModel: ViewModel {
    
    @Published var programs: [ProgramViewModel] = []
    private let service: ProgramsService
    
    init(service: ProgramsService) {
        self.service = service
    }

    // TODO: Use the ProgramsService to load the programs and assign viewmodels of them to the programs property
}

extension ProgramListViewModel: Equatable {
    static func == (lhs: ProgramListViewModel, rhs: ProgramListViewModel) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
}

extension ProgramListViewModel: Hashable {
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ObjectIdentifier(self))
    }
}
