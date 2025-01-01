import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView (.horizontal){
            Text("This is large horizontal content")
                .font(.system(size: 100))
        }
    }
}
#Preview {
    ContentView()
}
