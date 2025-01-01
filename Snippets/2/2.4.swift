import SwiftUI
struct ContentView: View {
    @State var counter: Int = 0
    var body: some View {
            Text("Counter: \(counter)")
                .font(.largeTitle)
            
            Button {
                counter += 1
            } label: {
                Label("Increment", systemImage: "plus")
            }
            .buttonStyle(.borderedProminent)
    }
}