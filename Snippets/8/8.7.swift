import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid {
            GridRow {
                ForEach(0..<3) { _ in Circle().foregroundColor(.red) }
            }
            GridRow {
                Circle().foregroundColor(.green)
                Text("This will take space of 2 cell")
                    .gridCellColumns(2)
                    .font(.title)
            }
            GridRow {
                ForEach(0..<3) { _ in Circle().foregroundColor(.mint) }
            }
        }
    }
}

#Preview {
    ContentView()
}
