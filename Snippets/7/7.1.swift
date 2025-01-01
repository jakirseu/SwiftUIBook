import SwiftUI
import UIKit

struct TextView: UIViewRepresentable {
    var text: String
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
         uiView.text = text
    }
}

struct ContentView: View {
    var body: some View {
        TextView(text: "This is a UITextView inside SwiftUI!")
            .frame(height: 200)
            .border(.gray, width: 1)
            .padding()
    }
}


#Preview {
    ContentView()
}
