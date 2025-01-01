import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        if let localHTMLURL = Bundle.main.url(forResource: "index", withExtension: "html") {
            WebView(url: localHTMLURL)
        } else {
            Text("Local HTML file not found")
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        
    }
}

#Preview {
    ContentView()
}