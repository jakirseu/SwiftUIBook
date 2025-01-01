import SwiftUI
struct ContentView: View {
    @State private var name = ""
    @FocusState private var isFocused: Bool
    var body: some View {
        
        TextField("Enter your name", text: $name)
            .padding()
            .focused($isFocused)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Hide Keyboard") {
                        isFocused = false
                    }
                }
            }
    }
}

#Preview {
    ContentView()
}