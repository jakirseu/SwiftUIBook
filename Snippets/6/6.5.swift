import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 5.0
    var body: some View {
        VStack{
            Text("Progress \(Int(progress)) / 15")
            ProgressView(value: progress, total: 15)
                .progressViewStyle(.linear)
            Button("Increase Progress") {
                if progress < 15 {
                    progress += 1
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
