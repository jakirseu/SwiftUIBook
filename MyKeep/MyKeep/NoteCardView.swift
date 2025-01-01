//
//  NoteCardView.swift
//  MyKeep
//
//  Created by Jakir Hossain on 18/12/24.
//

import SwiftUI

struct NoteCardView: View {
    let note: Note
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(note.title)
                .font(.headline)
                .foregroundStyle(.gray)
                .bold()
            Text(note.content)
                .lineLimit(5)
                .foregroundColor(.secondary)
            Spacer()
            Text(note.createdAt.formatted(date: .abbreviated, time: .shortened))
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 150, alignment: .topLeading)
        .background(Color.yellow.opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    NoteCardView(note: Note(title: "Note title", content: "Note content."))
        .frame(width: 200, height: 100)
}

