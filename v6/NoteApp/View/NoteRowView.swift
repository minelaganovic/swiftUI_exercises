//
//  NoteRowView.swift
//  NoteApp
//
//  Created by MacLab10 on 5.11.24..
//

import SwiftUI

struct NoteRowView: View {
    let note:Note
    var body: some View {
        VStack{
            Text(note.title)
                .font(.title)
            
            Text(note.date,style: .date)
                .font(.subheadline)
            
            Text(note.content)
                .font(.body)
                .lineLimit(1)
        }
        .padding(.vertical, 4)
    }
}

