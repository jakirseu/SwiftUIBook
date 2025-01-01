import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var player: AVAudioPlayer?
    @State private var isPlaying: Bool = false

    var body: some View {
        HStack {
            Button(action: {
                Task {
                    if isPlaying {
                        player?.pause()
                        isPlaying = false
                    } else {
                        await playRemoteAudio()
                    }
                }
            }) {
                Label(isPlaying ? "Pause" : "Play", systemImage: isPlaying ? "pause" : "play")
            }
            
            Button {
                player?.stop()
                isPlaying = false
            } label: {
                Label("Stop", systemImage: "stop")
                    .foregroundStyle(.red)
            }
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
            isPlaying = true
        } catch {
            print("Error loading audio: \(error)")
        }
    }
}

#Preview {
    ContentView()
}
