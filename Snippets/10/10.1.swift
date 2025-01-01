import SwiftUI

struct ContentView: View {
    @State var name = UserDefaults.standard.string(forKey: "username") ?? ""
    var body: some View {
        VStack {
            TextField("Enter username", text: $name)
                .textFieldStyle(.roundedBorder)
            Button("Save Username") {
                UserDefaults.standard.set(name, forKey: "username")
            }
            Text("Saved username: \(name)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}