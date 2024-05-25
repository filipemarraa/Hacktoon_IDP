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
        if let videoURL = Bundle.main.url(forResource: "encadeada", withExtension: "mp4") {
            VideoPlayerView(videoURL: videoURL, title: "Listas Encadeadas", summary: "Uma lista encadeada é uma estrutura de dados linear composta por nós, onde cada nó contém um valor e um ponteiro para o próximo nó na sequência. Diferentemente de arrays, as listas encadeadas não exigem alocação contígua de memória, permitindo inserções e remoções eficientes em qualquer posição. Elas podem ser simplesmente encadeadas (cada nó aponta para o próximo) ou duplamente encadeadas. As listas encadeadas são amplamente utilizadas em implementações de pilhas, filas e outras estruturas de dados dinâmicas.", onNextTap: {})
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

