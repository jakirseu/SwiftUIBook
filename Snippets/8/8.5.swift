import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid(horizontalSpacing: 20, verticalSpacing: 20) {
            GridRow {
                Text("R1, C1")
                Text("R1, C2")
            }
            GridRow {
                Text("R2, C1")
                Text("R2, C2")
            }
        }
    }
}

#Preview {
    ContentView()
}