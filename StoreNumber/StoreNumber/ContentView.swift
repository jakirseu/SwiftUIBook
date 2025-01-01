//
//  ContentView.swift
//  StoreNumber
//
//  Created by Jakir Hossain on 1/1/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query private var numbers: [Number]
    var body: some View {
        VStack {
            Button("Add item") {
                let item = Number(num: Int.random(in: 1...100) )
                modelContext.insert(item)
            }
            
            List{
                ForEach (numbers) { nummber in
                    Text("\(nummber.num)")
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
