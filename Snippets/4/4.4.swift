import SwiftUI

struct QuoteCardView: View {
    var quote : Quote
    var body: some View {
        VStack{
            Text(quote.quote)
                .italic()
            Text(quote.author)
                .font(.footnote)
        }
        .padding()
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .listRowSeparator(.hidden)
    }
}
