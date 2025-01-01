import SwiftUI

struct Quote: Codable, Identifiable {
    let id: Int
    let quote: String
    let author: String
}

struct ContentView: View {
    
    private var quotes: [Quote] {
        guard let url = Bundle.main.url(forResource: "quotes", withExtension: "json") else {
            return []
        }
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode([Quote].self, from: data)
        } catch {
            print("Error decoding JSON: \(error)")
            return []
        }
    }
    var body: some View {
        List(quotes) { quote in
            QuoteCardView(quote: quote)
        }
    }
}


#Preview {
    ContentView()
}
