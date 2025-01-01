import SwiftUI

struct ContentView: View {
    var data  = Array(1...20)
    let  columns = [
        GridItem(.flexible(minimum: 100, maximum: 200)),
        GridItem(.flexible(minimum: 100, maximum: 200)),
        GridItem(.flexible(minimum: 100, maximum: 200))
    ]
    
    var body: some View {
        
        ScrollView{
            LazyVGrid(columns: columns, spacing: 20) {
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