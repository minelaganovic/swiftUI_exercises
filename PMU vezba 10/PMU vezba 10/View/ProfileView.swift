//
//  ProfileView.swift
//  PMU vezba 10
//
//  Created by MacLab8 on 17.12.24..
//

import SwiftUI

struct ProfileView: View {
    @Binding var presentedSideMenu:Bool
    var body: some View {
        VStack {
            HStack {
                Button{presentedSideMenu.toggle()}
            label:{
                Image("menu")
                    .resizable()
                    .frame(width: 32, height: 32)
            }
                Spacer()
            }
            Spacer()
            VStack {
                VStack(spacing: 20) {
                    Image("profile-image")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                        .padding(.top)
                    
                    Text("Benjamin Ramovic")
                        .font(.title)
                        .bold()
                    
                    Text("IOS Developer")
                        .font(.body)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Text("Bio")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    
                }
            }
        }
        .navigationTitle("User profile")
        .padding()
        
        Spacer()
    }
}
