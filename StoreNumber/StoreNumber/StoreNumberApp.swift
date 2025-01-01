//
//  StoreNumberApp.swift
//  StoreNumber
//
//  Created by Jakir Hossain on 1/1/25.
//

import SwiftUI

@main
struct StoreNumberApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Number.self)
        }
    }
}
