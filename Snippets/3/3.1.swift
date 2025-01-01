import SwiftUI

struct ContentView: View {
    @State var variable = ""
    
    var body: some View {
        
        TextField("placeholder", text: $variable)
    }
}

#Preview {
    ContentView()
}