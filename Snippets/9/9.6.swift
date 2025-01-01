import SwiftUI
import AVKit
struct ContentView: View {
    var body: some View {
        if let url = URL(string: "https://www.sample-videos.com/video321/mp4/720/big_buck_bunny_720p_20mb.mp4") {
            VideoPlayer(player: AVPlayer(url: url))
        } else {
            Text("Video Not Found")
        }
    }
}


#Preview {
    ContentView()
}
