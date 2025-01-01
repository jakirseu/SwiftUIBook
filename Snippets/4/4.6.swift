import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack{
            NavigationLink("Open details view") {
                Text("Content of details view.")
            }
            .navigationTitle("My App")
        }
    }
}

#Preview {
    ContentView()
}