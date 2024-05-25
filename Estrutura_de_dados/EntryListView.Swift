import Foundation
import SwiftUI

struct EntryItem: Identifiable {
    let id = UUID()
    let category: String
    let title: String
    let description: String
}

struct EntryListView: View {
    let entryItems: [EntryItem] = [
        EntryItem(category: "Trilha", title: "Nova trilha disponível", description: "Explore nossa nova trilha sobre desenvolvimento iOS."),
        EntryItem(category: "Fórum", title: "Nova postagem no fórum", description: "Participe da discussão sobre as tendências de desenvolvimento de aplicativos móveis."),
        EntryItem(category: "Atividade", title: "Atualização de atividade", description: "Veja as últimas atividades dos membros da comunidade."),
        EntryItem(category: "Conteúdo", title: "Novo conteúdo disponível", description: "Confira nosso novo artigo sobre práticas recomendadas de design de interface do usuário."),
        EntryItem(category: "Feedback", title: "Sua opinião é importante para nós", description: "Nos ajude a melhorar fornecendo seu feedback sobre a última atualização da plataforma.")
    ]
    
    var body: some View {
        NavigationView {
            List(entryItems) { entry in
                EntryRowView(entry: entry)
            }
            .navigationTitle("Entradas")
            .scrollContentBackground(.hidden)
        }
    }
}

struct EntryRowView: View {
    let entry: EntryItem
    
    var body: some View {
        NavigationLink(destination: Text("Detalhes da entrada")) {
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.green)
                    Image(systemName: iconForCategory(category: entry.category))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                }
                VStack(alignment: .leading) {
                    Text(entry.category)
                        .font(.system(size: 16, weight: .semibold))
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .padding(.bottom, 1)
                    
                    Text(entry.title)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                        .lineLimit(1)
                        .truncationMode(.tail)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .listRowInsets(EdgeInsets())
            .padding(.vertical, 16)
        }
    }
    
    func iconForCategory(category: String) -> String {
        switch category {
        case "Trilha":
            return "books.vertical.fill" // ícone de livros para Trilha
        case "Fórum":
            return "text.bubble.fill" // ícone de balão de conversa para Fórum
        case "Atividade":
            return "bolt.fill" // ícone de raio para Atividade
        case "Conteúdo":
            return "book.fill" // ícone de livro para Conteúdo
        case "Feedback":
            return "star.fill" // ícone de estrela para Feedback
        default:
            return "circle.fill" // ícone padrão
        }
    }
}

struct EntryListView_Previews: PreviewProvider {
    static var previews: some View {
        EntryListView()
    }
}
