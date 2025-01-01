import SwiftUI
 
struct ContentView: View {
    @State private var show = false
     
    var body: some View {
        Button("Show Alert") {
            show = true
        }
        .alert("This is a message!", isPresented: $show) {
            Button("Got it!", role: .cancel) { }
             
        }
    }
}

#Preview {
    ContentView()
}