//
//  QuoteCardView.swift
//  QuoteVault
//
//  Created by Jakir Hossain on 9/12/24.
//

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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .listRowSeparator(.hidden)
    }
}

