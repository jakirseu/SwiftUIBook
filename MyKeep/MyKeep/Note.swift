//
//  Note.swift
//  MyKeep
//
//  Created by Jakir Hossain on 18/12/24.
//
import SwiftData
import Foundation
@Model
class Note {
    @Attribute(.unique) var id: UUID
    var title: String
    var content: String
    var createdAt: Date

    init(title: String, content: String) {
        self.id = UUID()
        self.title = title
        self.content = content
        self.createdAt = Date()
    }
}


