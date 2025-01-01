//
//  CartView.swift
//  SugerCafe
//
//  Created by Jakir Hossain on 24/12/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject private var cart: CartManager
    var body: some View {
        ScrollView {
            ForEach(cart.cartItems.sorted(by: { $0.key.id < $1.key.id }), id: \.key) { product, key in
                HStack {
                    Text(product.photo)
                        .font(.system(size: 50))
                    VStack(alignment: .leading){
                        Text(product.name)
                            .font(.title3)
                        Text("Price: " + String(format: "%.2f", product.price))
                            .font(.callout)
                    }
                    Spacer()
                    Button(action: {
                        cart.addToCart(product)
                    }, label: {
                        Image(systemName: "plus")
                    })
                    
                    Button(action: {
                        cart.removeFromCart(product: product)
                    }, label: {
                        Image(systemName: "minus")
                    })
                    
                    Text("\(key)")
                        .font(.title)
                        .bold()
                }
                .padding()
            }
            Button("Make Payment"){
                // hande checkout
            }.buttonStyle(.bordered)
            
        }
        .navigationTitle("Cart Review")
    }
}

