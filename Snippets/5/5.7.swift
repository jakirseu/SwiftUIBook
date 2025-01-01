import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack{
            Color.blue.ignoresSafeArea()
            Text("Hello, world!")
        }
    }
}
#Preview {
    ContentView()
}