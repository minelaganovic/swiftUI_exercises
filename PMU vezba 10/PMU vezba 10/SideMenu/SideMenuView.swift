//
//  SwiftUIView.swift
//  PMU vezba 10
//
//  Created by MacLab8 on 10.12.24..
//

import SwiftUI

enum SideMenuRowType: Int, CaseIterable {
    case home=0
    case favorite
    case chat
    case profile
    
    var title : String{
        switch self{
            case .home:
                return "Home"
            case .chat:
                return "Chat"
            case .favorite:
                return "Favorite"
            case .profile:
                return "Profile"
        }
    }
    
    var iconName:String {
        switch self{
        case .home:
            return "home"
        case .chat:
            return "chat"
        case .favorite:
            return "heart"
        case .profile:
            return "resume"
        }
    }
    
    
}

struct SideMenuView: View {
    
    @Binding var isSelectedMenu:Int
    @Binding var presentedMenu:Bool
    
    
    var body: some View {
        HStack{
            ZStack{
                
                    Rectangle()
                        .fill(.white)
                        .frame(width: 270)
                        .shadow(color: .purple.opacity(0.1), radius: 5, x: 0, y: 3)
                VStack{
                    profileImage()
                        .frame(height: 40)
                        .padding(.bottom, 50)
                    
                    ForEach(SideMenuRowType.allCases, id: \.self)
                    {
                        row in RowView(isSelected: isSelectedMenu == row.rawValue, imageName: row.iconName, title: row.title)
                        {
                            isSelectedMenu = row.rawValue
                            presentedMenu.toggle()
                        }
                        
                    }
                    Spacer()
                }
                .padding(.top, 120)
                .frame(width: 270)
                .background(Color.white)
            }
            Spacer()
        }
    }
    
    func profileImage()-> some View {
        VStack(alignment:.center) {
            Spacer()
            Image("profile-image")
                .resizable()
                .aspectRatio(contentMode:.fill)
                .frame(width: 100, height: 100)
                .overlay{
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(.purple.opacity(0.5), lineWidth: 10)
                }
                .cornerRadius(50)
            Text("Benjamin Ramovic")
                .font(.system(size:18, weight: .bold))
            
            Text("IOS Developer")
                .font(.system(size:14, weight: .semibold))
                .foregroundColor(.red)
        }
    }
    
    func RowView(isSelected:Bool, imageName:String, title:String, hideDivider:Bool=false, action:@escaping(() -> ()))-> some View {
        Button{action()
        }
    label:{
        VStack(alignment: .leading) {
            HStack {
                Rectangle()
                    .fill()
                    .frame(width: 5)
                
                ZStack {
                    Image(imageName)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(isSelected ? .black : .gray)
                        .frame(width: 26, height: 26)
                }
                .frame(width: 30, height: 30)
                
                Text(title)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(isSelected ? .black : .gray)
                Spacer()
            }
        }
    }
    .frame(height:50)
    .background(LinearGradient(colors: [isSelected ? .purple.opacity(0.5) : .white], startPoint:.leading, endPoint:.trailing))
    }
        
    
    
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isSelectedMenu: .constant(0), presentedMenu: .constant(true))
    }
}
