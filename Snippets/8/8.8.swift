import SwiftUI

class CounterManger: ObservableObject {
    @Published var count: Int = 0
    
    func increment() {
        count += 1
    }
    
    func decrement() {
        count -= 1
    }
}

struct ContentView: View {
    @StateObject var manager = CounterManger()
    var body: some View {
        Text("Count: \(manager.count)")
            .font(.largeTitle)
        Button("Increment") {
            manager.increment()
        }
        .buttonStyle(.borderedProminent)
        Button("Decrement") {
            manager.decrement()
        }
        .buttonStyle(.borderedProminent)
    }
}


#Preview {
    ContentView()
}
