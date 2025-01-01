import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        
        TabView {
            Text("Home Content")
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            Text("Profile Content")
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}