import SwiftUI

struct Quiz: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
}

let questions = [
    Quiz(question: "Capital of Bangladesh?", answer: "Dhaka"),
    Quiz(question: "What is 2 + 2?", answer: "4"),
    Quiz(question: "Symbol for water?", answer: "H₂O")
]
