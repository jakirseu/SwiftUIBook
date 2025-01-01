import SwiftUI

struct ContentView: View {
    
    @State var items =  Array(0...10)
    
    var body: some View {
        List(items, id: \.self) { item in
            Text("Item: \(item)")
        }
        .refreshable {
            let moreItems = items.count + 0...items.count + 4
            items.append(contentsOf: moreItems)
        }
    }
}

#Preview {
    ContentView()
}