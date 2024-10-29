//
//  ContactListView.swift
//  v4
//
//  Created by MacLab10 on 29.10.24..
//

import SwiftUI

struct ContactListView: View {
    
    let contacts:[Contact]=[
        Contact(name: "Benjamin Ramovic", phoneNumber: "064637282", email:"benjamin@gmail.com", imageName:"Image"),
        Contact(name: "Enesa Gudzevic", phoneNumber: "063637282", email:"enesa@gmail.com", imageName:"Image"),
        Contact(name: "Aldin Mekic", phoneNumber: "062637282", email:"aldin@gmail.com", imageName:"Image"),
        Contact(name: "Amina Omerovic", phoneNumber: "066637282", email:"amina@gmail.com", imageName:"Image"),
        Contact(name: "Dina Becirovic", phoneNumber: "069637282", email:"dina@gmail.com", imageName:"Image")
    ]
    
    var body: some View {
        
        NavigationView{
            List(contacts){
                contact in
                NavigationLink(destination:ContactDetailView(contact:contact)){
               
                    HStack{
                        
                        Image(contact.imageName)
                            .resizable()
                            .frame(width: 50,height: 60)
                            .clipShape(Circle())
                        
                        Text(contact.name)
                            .font(.headline)
                    }
                }
                .padding(.vertical,8)
            }
            .navigationTitle("Contacts")
        }
        
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
