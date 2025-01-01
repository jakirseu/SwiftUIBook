//
//  ContentView.swift
//  TiktokLite
//
//  Created by Jakir Hossain on 17/12/24.
//

import SwiftUI

struct ContentView: View {
    // Ensure videos are in the app bundle
    let videos =     ["video1", "video2", "video3"]
    var body: some View {
        
        TabView{
            
            HomeView(videos: videos)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            Text("Friends")
                .tabItem {
                    Label("Friends", systemImage: "person.2.fill")
                }
            
            Text("Add video")
                .tabItem {
                    Label("Add", systemImage: "plus")
                }
            
            Text("Inbox")
                .tabItem {
                    Label("Inbox", systemImage: "message.fill")
                }
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        
        
    }
}

#Preview {
    ContentView()
}
