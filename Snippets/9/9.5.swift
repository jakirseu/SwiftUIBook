import SwiftUI
import AVKit
struct ContentView: View {
    var body: some View {
        if let url = Bundle.main.url(forResource: "videoName", withExtension: "mp4") {
            VideoPlayer(player: AVPlayer(url: url))
        } else {
            Text("Video Not Found")
        }
    }
}


#Preview {
    ContentView()
}