import SwiftUI

struct ContentView: View {
    @State var isEnabled = true
    var body: some View {
        Toggle("Enable / Disable", isOn: $isEnabled)
    }
}
#Preview {
    ContentView()
}
