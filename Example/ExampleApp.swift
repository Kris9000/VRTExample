import SwiftUI

@main
struct ExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ListView().environmentObject(ProgramListViewModel(service: ProgramsService()))
        }
    }
}
