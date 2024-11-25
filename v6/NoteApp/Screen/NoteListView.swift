//
//  NoteListView.swift
//  NoteApp
//
//  Created by MacLab10 on 5.11.24..
//

import SwiftUI

struct NoteListView: View {
    @StateObject private var  viewModel = NotesViewModel()
    @State private var showNewNote = false
    
    var body: some View {
        NavigationStack{
            VStack{
            SearchBar(text: $viewModel.searchText)
            
            List(viewModel.filteredNotes){
                note in NavigationLink(destination:NoteDetailView(note: note)){
                    NoteRowView(note: note)
                }
            }
        }
        .navigationTitle("Lista Beleski")
        .toolbar {
            ToolbarItem(placement:.navigationBarTrailing)
            {
                Button(action: {showNewNote.toggle()})
                {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented:$showNewNote)
        {
            NewNoteView(viewModel:viewModel)
        }
    }
    }
}

struct NoteListView_Previews: PreviewProvider {
    static var previews: some View {
        NoteListView()
    }
}
