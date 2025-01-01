//
//  ContentView.swift
//  TipCalculator
//
//  Created by Jakir Hossain on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var billAmount: String = ""
    @State private var tipPercentage: Double = 10
    
    var total: Double {
        let amount = Double(billAmount) ?? 0
        let tip = amount * tipPercentage / 100
        return (amount + tip)
    }
    
    var tip: Double {
        let amount = Double(billAmount) ?? 0
        let tip = amount * tipPercentage / 100
        return  tip
    }
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            TextField("Enter bill amount", text: $billAmount)
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
            
            Text("Tip Percentage: \(Int(tipPercentage))%")
            Slider(value: $tipPercentage, in: 0...30, step: 1)
            
            Text("Total Bill: $\(total, specifier: "%.2f")")
                .font(.headline)
            Text("Tip: $\(tip, specifier: "%.2f"))")
                .font(.footnote)
            
        }
        .padding()
        
    }
}




#Preview {
    ContentView()
}
