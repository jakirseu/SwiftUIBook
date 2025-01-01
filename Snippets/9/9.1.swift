import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var player: AVAudioPlayer?
    var body: some View {
        Button(action: {
            do {
                player = try AVAudioPlayer(contentsOf: Bundle.main.url(forResource: "BirdSound", withExtension: "mp3")!)
                player?.play()
            } catch {
                print("Error loading audio: \(error)")
            }
        }) {
            Label("Play", systemImage: "play")
        }
    }
}

#Preview {
    ContentView()
}