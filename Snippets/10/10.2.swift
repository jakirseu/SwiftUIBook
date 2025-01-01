import SwiftUI

struct ContentView: View {
    @AppStorage("username") var name: String = ""
    var body: some View {
        VStack {
            TextField("Enter username", text: $name)
            Text("Saved username: \(name)")
        }
        .padding()
    }
}
#Preview {
    ContentView()
}