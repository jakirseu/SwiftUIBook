//
//  MyKeepApp.swift
//  MyKeep
//
//  Created by Jakir Hossain on 18/12/24.
//

import SwiftUI

@main
struct MyKeepApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
               
        } .modelContainer(for: Note.self)
    }
}
