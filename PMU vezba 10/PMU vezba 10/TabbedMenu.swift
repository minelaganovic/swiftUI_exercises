//
//  TabbedMenu.swift
//  PMU vezba 10
//
//  Created by MacLab8 on 17.12.24..
//

import SwiftUI

struct TabbedMenu: View {
    @State var presentedSideMenu = false
    @State var selectedSideMenuTab = 0
    
    var body: some View {
        ZStack{
            TabView(selection: $selectedSideMenuTab)
            {
                HomeView(presentedSideMenu:$presentedSideMenu).tag(0)
                FavoriteView(presentedSideMenu:$presentedSideMenu).tag(1)
                ChatView(presentedSideMenu:$presentedSideMenu).tag(2)
                ProfileView(presentedSideMenu:$presentedSideMenu).tag(3)
            }
            
            SideMenu(isShowing: $presentedSideMenu, content: AnyView(SideMenuView(isSelectedMenu: $selectedSideMenuTab, presentedMenu: $presentedSideMenu)))
        }
    }
}


