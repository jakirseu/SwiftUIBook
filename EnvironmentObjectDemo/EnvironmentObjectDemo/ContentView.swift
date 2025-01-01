import SwiftUI

struct ContentView: View {
    @EnvironmentObject var manager: CounterManger
    var body: some View {
        Text("\(manager.count)")
        Button("Increment") {
            manager.increment()
        }
    }
}



#Preview {
    ContentView()
        .environmentObject(CounterManger())
}
