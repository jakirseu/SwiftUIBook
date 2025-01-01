import SwiftUI

struct CardSideView: View {
    let text: String
    let bgColor: Color
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(bgColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    CardSideView(text: "Card side view", bgColor: .blue)
}
