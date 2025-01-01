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