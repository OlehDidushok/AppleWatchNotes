//
//  Note.swift
//  NotesWatch Watch App
//
//  Created by Oleh on 08.11.2024.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
