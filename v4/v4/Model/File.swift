//
//  File.swift
//  v4
//
//  Created by MacLab10 on 29.10.24..
//

import Foundation

struct Contact: Identifiable{
    let id=UUID()
    let name:String
    let phoneNumber:String
    let email:String
    let imageName: String
}

