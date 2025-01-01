import Foundation

struct Recipe: Identifiable, Decodable {
    let id: Int
    let name: String
    let ingredients: [String]
    let instructions: [String]
    let cookTimeMinutes: Int
    let difficulty: String
    let image: String
}


struct RecipeResponse: Decodable {
    let recipes: [Recipe]
}
