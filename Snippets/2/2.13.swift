import SwiftUI

struct ContentView: View {
    @State private var show = false
    
    var body: some View {
        
        Button("Show Sheet") {
            show.toggle()
        }
        .fullScreenCover(isPresented: $show) {
            Button("Close sheet") {
                show.toggle()
            }
            Text("Content of sheet.")
        }
    }
}

#Preview {
    ContentView()
}