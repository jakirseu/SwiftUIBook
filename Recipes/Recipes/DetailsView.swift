import SwiftUI

struct DetailsView: View {
    var recipe: Recipe
    var body: some View {
        VStack{
            Text(recipe.name)
                .font(.headline)
            AsyncImage(url: URL(string: recipe.image)) { image in
                image.resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(maxWidth: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            Text("Ingredients")
                .font(.headline)
            ForEach(recipe.ingredients, id: \..self) { ingredient in
                Text("- \(ingredient)")
                    .font(.body)
            }
        }
        .navigationTitle("Details")
    }
}
