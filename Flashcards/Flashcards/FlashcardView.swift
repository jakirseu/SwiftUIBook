
import SwiftUI

struct FlashcardView: View {
    let item: Quiz
    @State private var isFlipped = false
    var body: some View {
        ZStack {
            if isFlipped {
                CardSideView(text: item.answer, bgColor: .blue)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0, y: 1, z: 0))
            } else {
                CardSideView(text: item.question, bgColor: .teal)
            }
        }
        .padding()
        .rotation3DEffect(
            .degrees(isFlipped ? 180 : 0),
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .onTapGesture {
            withAnimation {
                isFlipped.toggle()
                UIImpactFeedbackGenerator(style: .medium).impactOccurred()
            }
        }
    }
}


#Preview {
    FlashcardView(item: questions[0])
}
