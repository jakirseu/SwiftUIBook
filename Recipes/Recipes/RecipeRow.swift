import SwiftUI

struct RecipeRow: View {
    var recipe: Recipe
    
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: recipe.image)) { image in
                image.resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading){
                Text(recipe.name)
                    .font(.headline)
                HStack{
                    Text("**Difficulty:** \(recipe.difficulty)")
                    Spacer()
                    Label("**Time:** \(recipe.cookTimeMinutes)", systemImage: "stopwatch")
                }
                .font(.footnote)
            }
        }
    }
}
