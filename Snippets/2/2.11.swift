import SwiftUI

struct ContentView: View {
    @State private var show = false
    
    var body: some View {
        
        Button("Show Sheet") {
            show = true
        }
        .sheet(isPresented: $show) {
            SheetView()
        }
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Text("This is a sheet!")
        Button("Dismiss") {
            dismiss()
        }
    }
}

#Preview {
    ContentView()
}
