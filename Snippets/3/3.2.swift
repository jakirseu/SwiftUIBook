import SwiftUI
struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        VStack{
            TextField("Enter your name", text: $name)
                .textFieldStyle(.roundedBorder)
            Text("Hello, \(name)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
