import SwiftUI
import AVKit

struct ContentView: View {
    let videos =  ["video1", "video2", "video3"]
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(spacing: 0) {
                ForEach(videos, id: \.self) { video in
                    VideoPlayerView(videoName: video)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                }
            }
        }
        .scrollTargetBehavior(.paging)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct VideoPlayerView: View {
    let videoName: String
    @State private var player: AVPlayer?
    @State private var isLiked: Bool = false
    
    var body: some View {
        if let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") {
            VideoPlayer(player: AVPlayer(url: url))
        } else {
            Text("Video Not Found")
        }
    }
}



#Preview {
    ContentView()
}
