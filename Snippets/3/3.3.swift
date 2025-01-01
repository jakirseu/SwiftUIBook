import SwiftUI
struct ContentView: View {
    @State var input: Float = 0.0
    var body: some View {
        VStack{
            Slider(value: $input)
            Text("\(input)")
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
