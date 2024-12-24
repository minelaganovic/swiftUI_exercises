//
//  SideMenu.swift
//  PMU vezba 10
//
//  Created by MacLab8 on 17.12.24..
//

import SwiftUI

struct SideMenu: View {
    @Binding var isShowing: Bool
    var content:AnyView
    var edgeTransition:AnyTransition = .move(edge: .leading)
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            if(isShowing)
            {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture{
                        isShowing.toggle()
                    }
                content
                    .transition(edgeTransition)
                    .background(Color.clear)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut, value: isShowing)
        
    }
}
