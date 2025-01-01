import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView {
            ForEach(1...50, id: \.self) { number in
                Text("Item \(number)")
                    .frame(maxWidth: .infinity)
            }
        }
    }
}
#Preview {
    ContentView()
}