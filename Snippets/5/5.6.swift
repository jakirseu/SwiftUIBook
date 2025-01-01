import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                ForEach(1..<50) { index in
                    Text("Row \(index)")
                        .padding()
                        .background(Color.blue)
                }
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
