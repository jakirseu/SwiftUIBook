//
//  ProdcutItemView.swift
//  SugerCafe
//
//  Created by Jakir Hossain on 24/12/24.
//

import SwiftUI
struct ProductCard: View {
    @EnvironmentObject var cart: CartManager
    let product: Product
    var body: some View {
        VStack {
            Text(product.photo)
                .font(.largeTitle)
            Text(product.name)
                .font(.headline)
                .lineLimit(1)
            Text(String(format: "$%.2f", product.price))
                .font(.subheadline)
            
            Button("Add to Cart"){
              
                    cart.addToCart(product)
               
            }.buttonStyle(.borderedProminent)
        }
        .padding()
        .frame(width: 150)
        .background(Color(.systemGray5))
        .cornerRadius(12)
    }
}

#Preview{
    ProductCard(product: products.first!)
}
