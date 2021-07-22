import Foundation
import Combine

struct ProgramsService {

    func getPrograms() -> AnyPublisher<ProgramList?, APIError> {
        // TODO: Use a token from the TokenAPI in this call
        // TODO: The fetchPrograms call will pseudorandomly fail. If this happens, retry up to 3 times
        return MockAPI().fetchPrograms(token: nil).eraseToAnyPublisher()
    }
    
}
