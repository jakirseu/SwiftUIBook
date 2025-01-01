import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid {
            GridRow {
                Text("Row 1")
                ForEach(0..<3) { _ in Circle().foregroundColor(.red) }
            }
            GridRow {
                Text("Row 2")
                ForEach(0..<5) { _ in Circle().foregroundColor(.green) }
            }
            GridRow {
                Text("Row 3")
                ForEach(0..<4) { _ in Circle().foregroundColor(.mint) }
            }
        }
    }
}

#Preview {
    ContentView()
}
