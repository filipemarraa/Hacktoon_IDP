import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let videoURL: URL
    let title: String
    let summary: String
    let onNextTap: () -> Void
    
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: videoURL))
                .frame(height: 300)
            
            Text(title)
                .font(.headline)
                .padding()
            
            Text(summary)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                onNextTap()
            }) {
                Text("Quiz")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
        }
    }
}

struct ContentView: View {
    var body: some View {
        if let videoURL = Bundle.main.url(forResource: "arrays", withExtension: "mp4") {
            VideoPlayerView(videoURL: videoURL, title: "Arrays", summary: "Um array é uma estrutura de dados linear que armazena elementos de mesmo tipo em posições de memória contíguas. Cada elemento é acessível por um índice, permitindo acesso rápido (O(1)). Arrays têm tamanho fixo, definido na criação, o que limita a flexibilidade. São eficientes em operações de leitura, mas inserções e remoções podem ser custosas, exigindo o deslocamento de múltiplos elementos.", onNextTap: {})
        } else {
            Text("Video file not found.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

