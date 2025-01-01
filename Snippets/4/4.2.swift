import SwiftUI
struct ContentView: View {
    var body: some View {
        List {
            Text("Item 1")
            Image(systemName: "globe")
            Label("Sky's the limit ", systemImage: "sun.horizon")
        }
    }
}

#Preview {
    ContentView()
}
