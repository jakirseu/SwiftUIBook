//
//  ContentView.swift
//  Recipes
//
//  Created by Jakir Hossain on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var recipes: [Recipe] = []
    
    var body: some View {
        NavigationStack {
            List(recipes) { recipe in
                NavigationLink {
                    DetailsView(recipe: recipe)
                } label: {
                    RecipeRow(recipe: recipe)
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Recipes")
            .navigationBarTitleDisplayMode(.inline)
            .task {
                await  recipes = fetchRecipes()
            }
        }
    }
        
    func fetchRecipes() async -> [Recipe]{
        
        guard let url = URL(string: "https://dummyjson.com/recipes") else { return  []}
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let fetchedPosts = try JSONDecoder().decode(RecipeResponse.self, from: data)
            return  fetchedPosts.recipes
        } catch {
            print("Failed to fetch posts: \(error)")
            return []
        }
    }
}


#Preview{
    ContentView()
}






