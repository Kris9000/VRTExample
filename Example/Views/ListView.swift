import SwiftUI

struct ListView: View {
    // TODO: Use the ProgramListViewModel declared in ExampleApp.swift instead of the one above
    let list = ProgramListViewModel(service: ProgramsService())

    var body: some View {
        NavigationView {
            List {
                ForEach(list.programs, id: \.self) { program in
                    // TODO: Tapping a program title should open a DetailView
                    HStack{
                        Image(systemName: program.iconName)
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                        Text(program.name)
                            .font(.body)}
                }
            }
            .font(.largeTitle)
            .navigationTitle("Programma's")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
