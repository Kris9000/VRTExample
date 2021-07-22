import SwiftUI

@main
struct ExampleApp: App {
    var body: some Scene {
        WindowGroup {
            // Disclaimer: we do **not** write production code like the line below ;)
            ListView().environmentObject(ProgramListViewModel(service: ProgramsService()))
        }
    }
}
