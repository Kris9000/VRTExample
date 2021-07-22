import Foundation
import Combine

class MockAPI {
    
    func fetchPrograms(token: String?) -> AnyPublisher<ProgramList?, APIError> {
        guard token != nil else {
            return Fail(error: APIError.missingToken)
                .eraseToAnyPublisher()
        }
        if arc4random_uniform(10) == 0 {
            return Fail(error: APIError.mockError)
                .eraseToAnyPublisher()
        }
        return Just(ProgramList(programs:mockPrograms))
            .setFailureType(to: APIError.self)
            .eraseToAnyPublisher()
    }
    
    private let mockPrograms = [Program.broadcast("Dagelijke kost", URL(string: "https://mock.string")!),
                                Program.broadcast("Vive le Velo", URL(string: "https://mock.string")!),
                                Program.stream("Terzake", URL(string: "https://mock.string")!),
                                Program.broadcast("Wij, Roger Raveel", URL(string: "https://mock.string")!),
                                Program.stream("Kapitein Zeppos", URL(string: "https://mock.string")!),
                                Program.broadcast("Thuis", URL(string: "https://mock.string")!)]
}

class TokenApi {
    func fetchToken() -> AnyPublisher<String, APIError> {
        return Just(UUID().uuidString)
            .setFailureType(to: APIError.self)
            .eraseToAnyPublisher()
    }
}

enum APIError: Error {
    case mockError, missingToken
}

