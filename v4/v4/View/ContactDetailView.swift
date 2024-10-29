//
//  ContactDetailView.swift
//  v4
//
//  Created by MacLab10 on 29.10.24..
//

import SwiftUI

struct ContactDetailView: View {
    
    let contact:Contact
    
    var body: some View {
        VStack{
            Image(contact.imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 5))
            
            Text(contact.name)
                .font(.title)
                .fontWeight(.bold)
            
            Text(contact.phoneNumber)
                .font(.title)
            Spacer()
            HStack{
                
                Button(action:{}){
                    Image(systemName: "phone.fill")
                        .font(.system(size: 40))
                        .foregroundColor(.green)
                        .padding()
                        .background(Color.blue)
                        .clipShape(Circle())
                }
                Spacer()
                
                Button(action:{}){
                    Image(systemName: "message.fill")
                        .font(.system(size: 40))
                        .foregroundColor(.green)
                        .padding()
                        .background(Color.blue)
                        .clipShape(Circle())
                }
                
            }
            .navigationTitle("Contacts Detail")
            .navigationBarTitleDisplayMode(.inline)
        }.padding(30)
            
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: Contact(name: "test", phoneNumber: "064532123", email: "test@gmail.com", imageName: "Image"))
    }
}
