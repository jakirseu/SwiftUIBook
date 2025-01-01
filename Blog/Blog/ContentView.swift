//
//  ContentView.swift
//  Blog
//
//  Created by Jakir Hossain on 9/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var posts: [Post] = []
    
    var body: some View {
        NavigationStack {
            List(posts) { post in
                NavigationLink(post.title) {
                    DetailsView(post: post)
                }
            }
            .navigationTitle("My Blog")
            .navigationBarTitleDisplayMode(.inline)
            .task {
                await  posts = fetchPosts()
            }
        }
    }
    
    func fetchPosts() async -> [Post]{
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return  []}
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let fetchedPosts = try JSONDecoder().decode([Post].self, from: data)
            return fetchedPosts
        } catch {
            print("Failed to fetch posts: \(error)")
            return []
        }
    }
}


struct Post: Identifiable, Codable {
    let id: Int
    let title: String
    let body: String
}

struct DetailsView: View {
    var post: Post
    var body: some View {
        VStack{
            Text(post.title)
                .font(.headline)
            Text(post.body)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Spacer()
        }
        .navigationTitle("Details")
    }
}

#Preview {
    ContentView()
}

