import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        AsyncImage( url: URL(string: "https://picsum.photos/500"),
                    content: { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 300, maxHeight: 300)
        },
                    placeholder: {
            ProgressView()
        })
    }
}
#Preview {
    ContentView()
}