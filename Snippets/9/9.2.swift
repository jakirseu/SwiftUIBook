import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var player: AVAudioPlayer?
    var body: some View {
        HStack{
            Button(action: {
                do {
                    guard let url = Bundle.main.url(forResource: "BirdSound", withExtension: "mp3") else {
                        print("Audio file not found.")
                        return
                    }
                    player = try AVAudioPlayer(contentsOf: url)
                    player?.play()
                } catch {
                    print("Error loading audio: \(error)")
                }
            }) {
                Label("Play", systemImage: "play")
            }
            
            
            Button {
                player?.pause()
            } label: {
                Label("Pause", systemImage: "pause")
            }
            
            
            Button {
                player?.stop()
            } label: {
                Label("Stop", systemImage: "stop")
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    ContentView()
}
