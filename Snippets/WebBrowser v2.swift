import SwiftUI
import WebKit

struct ContentView: View {
    @State private var urlString = "https://www.google.com"
    @State private var isLoading = false
    private let webView = WKWebView()
    
    var body: some View {
        VStack {
            HStack {
                Button(action: { webView.goBack() }) {
                    Image(systemName: "arrow.backward")
                        .font(.title)
                        .padding()
                }
                .disabled(!webView.canGoBack)
                
                TextField("Enter URL", text: $urlString, onCommit: {
                    loadURL()
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.URL)
                .autocapitalization(.none)
                .padding()
                
                Button("Go", action: loadURL)
                
                Button(action: { webView.goForward() }) {
                    Image(systemName: "arrow.forward")
                        .font(.title)
                        .padding()
                }
                .disabled(!webView.canGoForward)
            }
            .background(Color(.systemGray6))
            
            if isLoading {
                ProgressView("Loading...")
            }
            
            WebView(webView: webView, isLoading: $isLoading)
        }
        .onAppear {
            loadURL()
        }
    }
    
    private func loadURL() {
        var formattedURL = urlString
        if !formattedURL.starts(with: "http") {
            formattedURL = "https://\(formattedURL)"
        }
        
        guard let url = URL(string: formattedURL) else {
            print("Invalid URL")
            return
        }
        webView.load(URLRequest(url: url))
    }
}

struct WebView: UIViewRepresentable {
    let webView: WKWebView
    @Binding var isLoading: Bool
    
    func makeCoordinator() -> WebViewCoordinator {
        WebViewCoordinator(isLoading: $isLoading)
    }
    
    func makeUIView(context: Context) -> WKWebView {
        webView.navigationDelegate = context.coordinator
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) { }
}

class WebViewCoordinator: NSObject, WKNavigationDelegate {
    @Binding var isLoading: Bool
    
    init(isLoading: Binding<Bool>) {
        self._isLoading = isLoading
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        isLoading = true
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        isLoading = false
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        isLoading = false
    }
}
