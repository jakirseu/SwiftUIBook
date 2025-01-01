//
//  ContentView.swift
//  ThemeSwitch
//
//  Created by Jakir Hossain on 18/12/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("theme") var isDark: Bool = false
    var body: some View {
        Toggle("Enable dark mode", isOn: $isDark)
            .padding()
    }
}

#Preview {
    ContentView()
}


