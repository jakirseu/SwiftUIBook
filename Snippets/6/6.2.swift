import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        
        TabView{
            Color.blue.ignoresSafeArea()
            Color.red.ignoresSafeArea()
            Color.green.ignoresSafeArea()
            Color.black.ignoresSafeArea()
        }
        .tabViewStyle(.page)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
