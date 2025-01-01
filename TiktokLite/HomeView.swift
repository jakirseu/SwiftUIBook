//
//  HomeView.swift
//  TiktokLite
//
//  Created by Jakir Hossain on 17/12/24.
//

import SwiftUI

struct HomeView: View {
    let videos : [String]
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(spacing: 0) {
                ForEach(videos, id: \.self) { video in
                    VideoPlayerView(videoName: video)
                }
            }
            .scrollTargetLayout()
        }
 
        .scrollTargetBehavior(.paging)
        .edgesIgnoringSafeArea(.all)
    }
}

 
