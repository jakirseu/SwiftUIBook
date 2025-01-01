import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        
        Button("Click me"){
            UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        }
    }
}

#Preview {
    ContentView()
}