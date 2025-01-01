//
//  ContentView.swift
//  MyKeep
//
//  Created by Jakir Hossain on 18/12/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var notes: [Note]
    
    @State private var selectedNote: Note? = nil
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 20) {
                    ForEach(notes) { note in
                        NavigationLink(destination: AddNoteView(note: note)) {
                            NoteCardView(note: note)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("My Keep")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                NavigationLink(destination: AddNoteView()) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

