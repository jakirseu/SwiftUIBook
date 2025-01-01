//
//  ContentView.swift
//  Flashcards
//
//  Created by Jakir Hossain on 12/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ForEach(questions) { item in
                FlashcardView(item: item)
                    .frame(width: 300, height: 400)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    ContentView()
}
