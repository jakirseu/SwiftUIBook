import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Text("\(count)")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Button {
                count += 1
            } label: {
                Image(systemName: "plus")
                    .font(.title.weight(.bold))
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(.circle)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

 