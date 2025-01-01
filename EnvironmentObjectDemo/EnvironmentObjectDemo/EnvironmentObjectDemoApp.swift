//
//  EnvironmentObjectDemoApp.swift
//  EnvironmentObjectDemo
//
//  Created by Jakir Hossain on 24/12/24.
//

import SwiftUI

@main
struct EnvironmentObjectDemoApp: App {
    @StateObject var manager = CounterManger()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(manager)
        }
    }
}
