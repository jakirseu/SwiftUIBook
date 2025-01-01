import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var player: AVAudioPlayer?
    var body: some View {
        
        Button(action: {
            Task {
                await playRemoteAudio()
            }
        }) {
            Label("Play", systemImage: "play")
        }
    }
    func playRemoteAudio() async {
        
        guard let url = URL(string: "https://download.samplelib.com/mp3/sample-15s.mp3") else {
            print("Invalid URL.")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let audioPlayer = try AVAudioPlayer(data: data)
            player = audioPlayer
            player?.play()
        } catch {
            print("Error loading audio: \(error)")
        }
    }
}

#Preview {
    ContentView()
}
