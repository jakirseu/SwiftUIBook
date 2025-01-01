//
//  AddNoteView.swift
//  MyKeep
//
//  Created by Jakir Hossain on 18/12/24.
//

import SwiftUI
import SwiftData

struct AddNoteView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var modelContext
    
    // Optional note for editing
    var note: Note?
    
    // State for form fields
    @State private var title: String = ""
    @State private var content: String = ""
    @State private var showDeleteAlert = false
    
    init(note: Note? = nil) {
        self.note = note
        _title = State(initialValue: note?.title ?? "")
        _content = State(initialValue: note?.content ?? "")
    }
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $title)
                TextEditor(text: $content)
                    .frame(minHeight: 150)
                
                
                // Delete Button (only for editing mode)
                if note != nil {
                    
                    Button("Delete", role: .destructive) {
                        
                        showDeleteAlert = true
                        
                    }
                }
            }
            .navigationTitle(note == nil ? "New Note" : "Edit Note")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        saveNote()
                    }
                }
            }
            .alert("Are you sure you want to delete this note?", isPresented: $showDeleteAlert) {
                Button("Delete", role: .destructive) {
                    deleteNote()
                }
                Button("Cancel", role: .cancel) {}
            }
        }
    }
    
    private func saveNote() {
        if let note {
            // Update existing note
            note.title = title
            note.content = content
        } else {
            // Create new note
            let newNote = Note(title: title, content: content)
            modelContext.insert(newNote)
        }
        dismiss()
    }
    
    private func deleteNote() {
        if let note {
            modelContext.delete(note)
        }
        dismiss()
    }
}

#Preview {
    AddNoteView()
}
