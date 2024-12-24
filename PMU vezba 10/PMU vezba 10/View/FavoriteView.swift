//
//  FavoriteView.swift
//  PMU vezba 10
//
//  Created by MacLab8 on 17.12.24..
//

import SwiftUI

struct FavoriteView: View {
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
                Text("Favorite View")
            }
            Spacer()
        }
    }
}
