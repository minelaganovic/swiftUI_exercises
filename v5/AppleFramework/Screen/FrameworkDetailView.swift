//
//  FrameworkDetailView.swift
//  AppleFramework
//
//  Created by MacLab10 on 29.10.24..
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework:Framework
    @State private var isShowSafariView = false
    var body: some View {
        
        VStack{
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.title2)
                .foregroundColor(.red)
                .padding(20)
            
            Spacer()
            
            Button{
                
                isShowSafariView=true
                
            } label:{ Text("Learn More")
                    .foregroundColor(.red)
                    .buttonStyle(.bordered)
                    .frame(width:130, height: 40)
                    .background(Color.blue)
                    .controlSize(.large)
                    .cornerRadius(15)
            }
            
        }
        .sheet(isPresented: $isShowSafariView, content: {
                    SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
                })

        
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: FrameworkData.sampleFramework)
    }
}
