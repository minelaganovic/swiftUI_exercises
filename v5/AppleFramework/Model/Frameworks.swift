//
//  Frameworks.swift
//  AppleFramework
//
//  Created by MacLab10 on 29.10.24..
//

import Foundation

struct Framework:Hashable, Identifiable{
    let id=UUID()
    let name:String
    let imageName:String
    let urlString:String
    let description:String
}
struct FrameworkData{
    static let  sampleFramework=Framework(name: "Arkit", imageName: "arkitnew", urlString: "https://developer.apple.com/augmented-reality/", description:"Arkit description ")
    
    static let framework=[
        Framework( name:"Arkit",imageName: "arkitnew", urlString: "https://developer.apple.com/augmented-reality/", description:"Arkit description "),
        
        Framework( name:"Carplay", imageName: "carplay", urlString: "https://en.wikipedia.org/wiki/CarPlay", description:"Carplay description "),
        
        Framework( name:"ClassKit", imageName: "classkit", urlString: "https://en.wikipedia.org/wiki/CarPlay", description:"ClassKit description "),
        
        Framework(name:"SwiftUI", imageName: "swiftUI", urlString: "url..", description:"SwiftUI description"),
        
        Framework( name:"Coreml",imageName: "coreml", urlString: "url..", description:"Coreml description "),
        
        Framework( name:"Widgetkit", imageName: "widgetkit", urlString: "url..", description:"Carplay description "),
        
        Framework( name:"HealthKit", imageName:"healthkit", urlString: "url..", description:"HealthKit description "),
        
        Framework(name:"Catalyst", imageName: "catalyst", urlString: "url..", description:"SwiftUI description")
    ]
}
