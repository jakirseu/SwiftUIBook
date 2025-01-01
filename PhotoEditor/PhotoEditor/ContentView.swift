import SwiftUI
import PhotosUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct ContentView: View {
    @State private var selection: PhotosPickerItem?
    @State private var originalImage: UIImage?
    @State private var filteredImage: UIImage?
    private let context = CIContext()
    private let sepiaFilter = CIFilter.sepiaTone()
    
    var body: some View {
        VStack {
            // Image Display
            if let image = filteredImage ?? originalImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 300, maxHeight: 300)
            }  else {
                Text("Select an image to edit")
            }
            
            PhotosPicker("Select an image", selection: $selection, matching: .images)
                .onChange(of: selection) {
                    Task {
                        
                        if let data = try? await selection?.loadTransferable(type: Data.self) {
                            originalImage = UIImage(data: data)
                            filteredImage = nil
                        }
                    }
                }
                .padding()
            HStack{
                Button("Apply Filter") {
                    applySepiaFilter()
                }
                // Disable button until image is loaded
                .disabled(originalImage == nil)
                
                Button("Save Image") {
                    if let filteredImage {
                        UIImageWriteToSavedPhotosAlbum(filteredImage, nil, nil, nil)
                    }
                }
                // Disable button until filter
                .disabled(filteredImage == nil)
                
            }
        }
        .padding()
    }
    
    // Function to apply a sepia tone filter
    private func applySepiaFilter() {
        guard let originalImage = originalImage,
              let ciImage = CIImage(image: originalImage) else { return }
        // Apply the sepia tone filter
        sepiaFilter.setValue(ciImage, forKey: kCIInputImageKey)
        sepiaFilter.setValue(1.0, forKey: kCIInputIntensityKey)
        // Render the filtered image
        if let outputImage = sepiaFilter.outputImage,
           let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
            filteredImage = UIImage(cgImage: cgImage) // Set the filtered image
        }
    }
}

#Preview {
    ContentView()
}
