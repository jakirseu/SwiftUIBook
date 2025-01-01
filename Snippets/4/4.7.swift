import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            Text("Hello, world!")
                .navigationTitle("Home")
                .toolbar {
                    ToolbarItem{
                        Button(action: {
                            print("Edit tapped")
                        }) {
                            Image(systemName: "pencil.circle")
                        }
                    }
                }
        }
        
    }
}
#Preview {
    ContentView()
}
 