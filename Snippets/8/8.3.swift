import SwiftUI

struct ContentView: View {
    var data  = Array(1...20)
    let  columns = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
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