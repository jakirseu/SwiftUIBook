import SwiftUI
import AVFoundation

struct ContentView: View {
    
    var audioFileName: String = "BirdSound"
    
    @State private var player: AVAudioPlayer?
    
    @State private var isPlaying = false
    @State private var totalTime: TimeInterval = 0.0
    @State private var currentTime: TimeInterval = 0.0
    
    var body: some View {
        
        VStack(spacing: 5) {
            
            VStack(spacing: 10){
                
                HStack(spacing: 12) {
                    // Album Art
                    Image("album")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .cornerRadius(4)
                        .clipped()
                    
                    // Track info
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Track Title")
                            .font(.headline)
                            .lineLimit(1)
                        Text("Artist Name")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineLimit(1)
                    }
                    .layoutPriority(1)
                    
                    Spacer()
                    // Play or pause button
                    Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                        .font(.largeTitle)
                        .onTapGesture {
                            isPlaying ? stopAudio() : playAudio()
                        }
                }
                // audio seek slider
                Slider(value: Binding(get: {
                    currentTime
                }, set: { newValue in
                    seekAudio(to: newValue)
                }), in: 0...totalTime)
                .accentColor(.white)
                HStack {
                    Text(timeString(time: currentTime))
                    Spacer()
                    Text(timeString(time: totalTime))
                }
                .padding(.horizontal)
            }
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(20)
        }
        
        .padding()
        .onChange(of: audioFileName) {  oldValue, newValue  in
            stopAudio()
            setupAudio(name: newValue)
        }
        .onAppear{
            setupAudio(name: audioFileName)
            
        }
        .onReceive(Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()) { _ in
            updateProgress()
            
        }
    }
    
    private func setupAudio(name: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            totalTime = player?.duration ?? 0.0
        } catch {
            print("Error loading audio: \(error)")
        }
    }
    
    private func playAudio(){
        
        let session = AVAudioSession.sharedInstance()
        do{
            try session.setCategory(.playback, mode: .default, options: [])
            try session.setActive(true)
        }
        catch {
            print("Error in AVAudio Session\(error.localizedDescription)")
        }
        
        player?.play()
        isPlaying = true
    }
    
    private func stopAudio(){
        player?.pause()
        isPlaying = false
    }
    
    private func updateProgress() {
        guard let player = player else { return }
        currentTime = player.currentTime
        if currentTime == 0.0{
            isPlaying = false
        }
    }
    
    private func seekAudio(to time: TimeInterval) {
        player?.currentTime = time
    }
    
    private func timeString(time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

 
#Preview {
    ContentView(audioFileName: "BirdSound")
}

