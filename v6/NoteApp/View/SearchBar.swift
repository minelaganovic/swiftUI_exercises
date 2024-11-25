//
//  SearchBar.swift
//  NoteApp
//
//  Created by MacLab10 on 12.11.24..
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    @State private var isEditing=false
    var body: some View {
        HStack{
        TextField("Pretraga..", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray))
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.red)
                            .frame(minWidth:0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if isEditing {
                            Button(action: {
                                self.text=""
                            })
                            {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.red)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .onTapGesture {
                    self.isEditing=true
                }
            
            if isEditing{
                Button("Cancel"){
                    self.isEditing=false
                    self.text=""
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil,for: nil)
                }
            }

        }
    }
}

