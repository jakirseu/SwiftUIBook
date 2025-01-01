import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query private var numbers: [Number]
    var body: some View {
        VStack {
            Button("Add item") {
                let item = Number(num: Int.random(in: 1...100) )
                modelContext.insert(item)
            }
            
            List{
                ForEach (numbers) { nummber in
                    Text("\(nummber.num)")
                }
            }
            
        }
        .padding()
    }
}


@Model
class Number{
    var num: Int
    init(num: Int) {
        self.num = num
    }
}
#Preview {
    ContentView()
       
}
