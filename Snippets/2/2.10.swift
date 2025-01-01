import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {
        Button("Show Sheet") {
            show.toggle()
        }
        .sheet(isPresented: $show) {
            Text("Content of sheet.")
        }
    }
}

#Preview {
    ContentView()
}