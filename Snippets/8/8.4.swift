import SwiftUI

struct ContentView: View {
    var data  = Array(1...20)
    private let gridRows = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: gridRows, spacing: 20)  {
                ForEach(data, id: \.self) { item in
                    Text(String(item))
                        .frame(width: 100, height: 100)
                        .background(.blue)
                }
            }
            
        } .padding()
    }
}

#Preview {
    ContentView()
}