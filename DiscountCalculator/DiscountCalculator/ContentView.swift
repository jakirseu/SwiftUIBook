//
//  ContentView.swift
//  DiscountCalculator
//
//  Created by Jakir Hossain on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var price: String = ""
    @State var discount: String = ""
    @State var reult: Double = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            
            TextField("Enter original price", text: $price)
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
            
            TextField("Enter discount (%)", text: $discount)
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
            
            
            Button("Calculate") {
                let price = Double(price) ?? 0.0
                let discount = Double(discount) ?? 0.0
                reult = price - (price * discount / 100)
            }
            .buttonStyle(.borderedProminent)
            
            Text("Discounted Price: ৳\(reult, specifier: "%.2f")")
                .font(.title2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
