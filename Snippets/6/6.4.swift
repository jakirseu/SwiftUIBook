import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 0.3
    var body: some View {
        VStack{
            ProgressView(value: progress)
                .progressViewStyle(.linear)
            Button("Increase Progress") {
                if progress < 1.0 {
                    progress += 0.1
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}