import SwiftUI
import PhotosUI

struct ContentView: View {
    @State private var selection: PhotosPickerItem?
    @State var image: Image?
    var body: some View {
        PhotosPicker("Select an image",
                     selection: $selection, matching: .images)
        .onChange(of: selection) {
            Task {
                if let image = try? await
                    selection?.loadTransferable(type: Image.self) {
                    self.image = image
                }
            }
        }
        
        if let image {
            image
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    ContentView()
}
