import SwiftUI

struct DetailView: View {
    let program: ProgramViewModel
    
    var body: some View {
        Text(program.name).font(.largeTitle)
    }
}

