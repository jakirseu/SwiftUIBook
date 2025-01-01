import SwiftUI
import AVKit

struct ContentView: View {

    
    var body: some View {
 
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            Text("Friends")
                .tabItem {
                    Label("Friends", systemImage: "person.2.fill")
                }
            
            Text("Add video")
                .tabItem {
                    Label("Add", systemImage: "plus")
                }
            
            Text("Inbox")
                .tabItem {
                    Label("Inbox", systemImage: "message.fill")
                }
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
      
    }
}

struct HomeView: View {
    // List of video names (update with your video files)
    let videos = ["video1", "video2", "video3"] // Ensure videos are in the app bundle
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(spacing: 0) {
                ForEach(videos, id: \.self) { video in
                    TikTokVideoView(videoName: video)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .edgesIgnoringSafeArea(.all)
    }
}

struct TikTokVideoView: View {
    let videoName: String
    @State private var player: AVPlayer?
    @State private var isVisible: Bool = false
    @State private var isLiked: Bool = false
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                if let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") {
                    VideoPlayer(player: player)
                        .onAppear {
                            setupPlayer(url: url)
                        }
                        .onDisappear {
                            stopPlayer()
                        }
                        .edgesIgnoringSafeArea(.all)
                } else {
                    Text("Video Not Found")
                        .foregroundColor(.white)
                        .background(Color.black.edgesIgnoringSafeArea(.all))
                }
                
                // Overlay UI
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        VStack(spacing: 30) {
                            // Like Button
                            Button(action: { isLiked.toggle() }) {
                                VStack {
                                    Image(systemName: isLiked ? "heart.fill" : "heart")
                                        .font(.system(size: 40))
                                        .foregroundColor(isLiked ? .red : .white)
                                    Text("662.7K")
                                        .foregroundColor(.white)
                                        .font(.caption)
                                }
                            }
                            // Comment Button
                            Button(action: { print("Comment tapped") }) {
                                VStack {
                                    Image(systemName: "message.fill")
                                        .font(.system(size: 40))
                                        .foregroundColor(.white)
                                    Text("22.1K")
                                        .foregroundColor(.white)
                                        .font(.caption)
                                }
                            }
                            // Share Button
                            Button(action: { print("Share tapped") }) {
                                VStack {
                                    Image(systemName: "arrowshape.turn.up.right.fill")
                                        .font(.system(size: 40))
                                        .foregroundColor(.white)
                                    Text("64K")
                                        .foregroundColor(.white)
                                        .font(.caption)
                                }
                            }
                        }
                        .padding(.bottom, 50)
                        .padding(.trailing, 20)
                    }
                }
            }
            .onChange(of: geo.frame(in: .global).minY) { old, newValue in
                handleVisibility(newValue)
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .edgesIgnoringSafeArea(.all)
    }
    
    // MARK: - Helper Methods
    private func setupPlayer(url: URL) {
        player = AVPlayer(url: url)
        player?.play()
        player?.isMuted = false
    }
    
    private func stopPlayer() {
        player?.pause()
        player?.replaceCurrentItem(with: nil)
        player = nil
    }
    
    private func handleVisibility(_ yPosition: CGFloat) {
        // Detect if the video is visible
        if yPosition > -UIScreen.main.bounds.height && yPosition < UIScreen.main.bounds.height {
            if !isVisible {
                player?.play()
                isVisible = true
            }
        } else {
            if isVisible {
                stopPlayer()
                isVisible = false
            }
        }
    }
}
