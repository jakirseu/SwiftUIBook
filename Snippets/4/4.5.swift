import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack{
            NavigationLink("Open details view") {
                Text("Content of details view.")
            }
        }
    }
}

#Preview {
    ContentView()
}