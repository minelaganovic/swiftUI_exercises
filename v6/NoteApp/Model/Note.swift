//
//  Note.swift
//  NoteApp
//
//  Created by MacLab10 on 5.11.24..
//

import Foundation

struct Note: Identifiable {
    let id=UUID()
    let title: String
    let content: String
    let date: Date
    let category: String
}
