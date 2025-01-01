import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView {
            VStack{
                ForEach(1...50, id: \.self) { item in
                    Text("Item \(item)")
                        .frame(maxWidth: .infinity)
                }
            }
        }
    }
}
#Preview {
    ContentView()
}