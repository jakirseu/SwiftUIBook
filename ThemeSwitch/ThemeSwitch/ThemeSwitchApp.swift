//
//  ThemeSwitchApp.swift
//  ThemeSwitch
//
//  Created by Jakir Hossain on 18/12/24.
//

import SwiftUI

@main
struct ThemeSwitchApp: App {
    @AppStorage("theme") var isDark: Bool = false
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDark ? .dark : .light)
        }
    }
}

