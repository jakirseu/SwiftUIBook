//
//  ContentView.swift
//  HideKeyboardDemo
//
//  Created by Jakir Hossain on 21/12/24.
//

import SwiftUI
struct ContentView: View {
    @State private var text = ""
    @FocusState private var isFocused: Bool
    var body: some View {
        VStack{
            
            TextField("Enter text", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .focused($isFocused)
        }
        .padding()
        .toolbar{
            ToolbarItem(placement: .keyboard) {
                Button("Hide Keyboard") {
                    isFocused.toggle()
                }
            }
        }
    }
}


#Preview {
    ContentView()
}

