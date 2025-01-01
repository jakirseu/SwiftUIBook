import SwiftUI
import PDFKit
struct PDFKitView: UIViewRepresentable {
    let pdfDocument: PDFDocument
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.autoScales = true
        pdfView.document = pdfDocument
        return pdfView
    }
    
    func updateUIView(_ uiView: PDFView, context: Context) {
        // Update if necessary
    }
}

struct ContentView: View {
    var body: some View {
        
        if let pdfURL = Bundle.main.url(forResource: "sample", withExtension: "pdf"),
           let document = PDFDocument(url: pdfURL) {
            PDFKitView(pdfDocument: document)
                .edgesIgnoringSafeArea(.all)
        } else {
            Text("Failed to load PDF")
        }
    }
}


#Preview {
    ContentView()
}
