import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello")
    }
}

#Preview {
    ContentView()
        .environment(\.locale, Locale(identifier: "bn"))
}