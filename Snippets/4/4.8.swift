import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            Text("Hello, world!")
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing){
                        Button(action: {
                            print("Edit tapped")
                        }) {
                            Image(systemName: "pencil.circle")
                        }
                    }
                    ToolbarItem(placement: .topBarLeading){
                        Button(action: {
                            print("setting tapped")
                        }) {
                            Image(systemName: "gear")
                        }
                    }
                }
        }
        
    }
}
#Preview {
    ContentView()
}





