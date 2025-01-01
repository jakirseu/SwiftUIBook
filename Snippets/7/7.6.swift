import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        if let url = URL(string: "https://jakir.me") {
            WebView(url: url)
                .edgesIgnoringSafeArea(.all)
        } else {
            Text("Invalid URL")
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        webView.load(URLRequest(url: url))
    }
}


#Preview {
    ContentView()
}