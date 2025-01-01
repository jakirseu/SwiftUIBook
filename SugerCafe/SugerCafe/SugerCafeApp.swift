//
//  SugerCafeApp.swift
//  SugerCafe
//
//  Created by Jakir Hossain on 24/12/24.
//

import SwiftUI

@main
struct SugerCafeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CartManager())
        }
    }
}
