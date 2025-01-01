import SwiftUI

class CounterManger: ObservableObject {
    @Published var count: Int = 0
    func increment() {
        count += 1
    }
}

struct ContentView: View {
    @StateObject var manager = CounterManger()
    var body: some View {
        ChildView(manager: manager)
        Button("Increment") {
            manager.increment()
        }
    }
}
struct ChildView: View {
    @ObservedObject var manager: CounterManger
    var body: some View {
        Text("Count: \(manager.count)")
    }
}

#Preview {
    ContentView()
}
