//
//  NotesViewModel.swift
//  NoteApp
//
//  Created by MacLab10 on 5.11.24..
//

import SwiftUI

class NotesViewModel :ObservableObject {
     
    @Published var notes: [Note] = [
        
    Note(title: "Ispit Mobilne aplikacije", content: "Opis", date: Date(), category: "ispiti"),
    
    Note(title: "Ispit Distribuirani Sistemi", content: "Opis", date: Date(), category: "ispiti"),
    
    Note(title: "Racunarska Grafika", content: "Osmi semestra", date: Date(), category: "ispiti")
    ]
    
    @Published  var searchText: String=""
    
    var filteredNotes:[Note]{
        if searchText.isEmpty{
            return notes
        }
        else{
            return notes.filter{$0.title.contains(searchText) || $0.content.contains(searchText)
            }
        }
    }
    
    func addNewNote(title:String,content:String,category:String)
    {
        let newNote=Note(title:title, content:content, date: Date(), category: category)
        notes.append(newNote)
    }
}

