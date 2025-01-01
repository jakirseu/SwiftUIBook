//
//  ContentView.swift
//  SugerCafe
//
//  Created by Jakir Hossain on 24/12/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cart: CartManager
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 20) {
                    
                    ForEach(products) { product in
                        ProductCard(product: product)
                    }
                }
                .padding()
            }
            .navigationTitle("Welcome to Suger Cafe")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem{
                    NavigationLink {
                        CartView()
                    } label: {
                        ZStack(alignment: .topTrailing){
                            Image(systemName: "cart")
                                .padding(.top, 5)
                            
                            Text("\(cart.cartCount)")
                                .font(.caption2).bold()
                                .foregroundColor(.white)
                                .frame(width: 15, height: 15)
                                .background(.red)
                                .cornerRadius(50)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
    
}

