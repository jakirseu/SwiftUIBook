import SwiftUI

struct ContentView: View {
    var data  = Array(1...20)
    let adaptiveColumn = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        
        ScrollView{
            LazyVGrid(columns: adaptiveColumn, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(String(item))
                        .frame(width: 150, height: 150)
                        .background(.blue)
                }
            }
            
        } .padding()
    }
}

#Preview {
    ContentView()
}
