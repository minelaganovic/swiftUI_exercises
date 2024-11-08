//
//  FrameworkGridView.swift
//  AppleFramework
//
//  Created by MacLab10 on 29.10.24..
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel=FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(FrameworkData.framework){
                        framework in
                        NavigationLink (value:framework){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                    
                }
            }
            .navigationTitle(" Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                            FrameworkDetailView(framework: framework)
                        }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
