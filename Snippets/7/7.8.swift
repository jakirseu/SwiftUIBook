import SwiftUI
import WebKit

struct ContentView: View {
    let webView = WebView(webView: WKWebView())
    @State var url = "https://jakir.me"
    var body: some View {
        VStack {
            HStack(spacing: 10){
                Button(action: {
                    webView.goBack()
                }){
                    Image(systemName: "arrow.backward")
                        .font(.title)
                }
                TextField("Enter url", text: $url)
                Button(action: {
                    webView.loadURL(url: url)
                }, label: {
                    Text("Go")
                })
                Button(action: {
                    webView.goForward()
                }){
                    Image(systemName: "arrow.forward")
                        .font(.title)
                }
            }
            .padding()
            .background(Color(.systemGray6))
            // main webview
            webView
        }
        .onAppear(){
            webView.loadURL(url: url)
        }
    }
}

struct WebView: UIViewRepresentable {
    let webView: WKWebView
    func makeUIView(context: Context) -> WKWebView {
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {}
    func goBack(){
        webView.goBack()
    }
    func goForward(){
        webView.goForward()
    }
    func loadURL(url: String) {
        webView.load(URLRequest(url: URL(string: url)!))
    }
}

#Preview {
    ContentView()
}