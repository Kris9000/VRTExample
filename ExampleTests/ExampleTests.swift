import XCTest
import Combine
@testable import Example

class ExampleTests: XCTestCase {
    
    private var cancellables: Set<AnyCancellable>!
    
    override func setUpWithError() throws {
        cancellables = []
    }
    
    func testFetchPrograms() {
        let sut = ProgramsService()
        var list: ProgramList?
        var error: Error?
        let expectation = self.expectation(description: "ProgramList")
        
        sut.getPrograms()
            .sink(receiveCompletion: { completion in
            switch completion {
            case .finished:
                break
            case .failure(let encounteredError):
                error = encounteredError
            }
                
                expectation.fulfill()
        },
        receiveValue: { value in
            list = value
        }).store(in: &cancellables)
        
        waitForExpectations(timeout: 10)
        XCTAssertNil(error)
        XCTAssertNotNil(list)
    }

    
    
}
