import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            Image("jellyfish")
                .resizable()
            
            Text("Jellyfish")
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .opacity(0.9)
        }
        .frame(width: 200, height: 250)
    }
}
#Preview {
    ContentView()
}