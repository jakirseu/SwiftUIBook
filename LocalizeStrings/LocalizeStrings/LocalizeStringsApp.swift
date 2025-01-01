//
//  LocalizeStringsApp.swift
//  LocalizeStrings
//
//  Created by Jakir Hossain on 30/11/24.
//

import SwiftUI

@main
struct LocalizeStringsApp: App {
    @AppStorage("selectedLanguage") var selectedLanguage = "bn"
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.locale, Locale(identifier:  selectedLanguage))
        }
    }
}
