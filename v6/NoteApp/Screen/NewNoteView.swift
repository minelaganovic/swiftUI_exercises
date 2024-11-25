//
//  NewNoteView.swift
//  NoteApp
//
//  Created by MacLab10 on 12.11.24..
//

import SwiftUI

struct NewNoteView: View {
    
    @Environment (\.dismiss) var dismiss
    @ObservedObject var viewModel:NotesViewModel

    @State private var title=""
    @State private var content=""
    @State private var category=""
    
    var body: some View {
        
        NavigationView{
            
            Form {
                
                Section(header:Text("Naziv")){
                    TextField("Unesite naziv", text: $title)
                }
                
                Section(header:Text("Opis")){
                    TextField("Unesite opis", text: $content)
                }
                
                Section(header:Text("kategorija")){
                    TextField("Unesite kategorija", text: $category)
                }
            }
            .toolbar{
                ToolbarItem(placement: .cancellationAction)
                {
                    Button("Cancel")
                    {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .confirmationAction)
                {
                    Button("Save"){
                        viewModel.addNewNote(title: title, content: content, category: category)
                        dismiss()
                    }
                    .disabled(title.isEmpty||category.isEmpty||content.isEmpty)
                }
            }
            
        }
        
    }
}

