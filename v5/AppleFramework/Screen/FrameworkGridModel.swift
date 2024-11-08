//
//  FrameworkGridModel.swift
//  AppleFramework
//
//  Created by MacLab10 on 29.10.24..
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel:ObservableObject{
    
    let columns:[GridItem] =  [GridItem (.flexible()) ,GridItem (.flexible()) ,GridItem(.flexible())]
}
