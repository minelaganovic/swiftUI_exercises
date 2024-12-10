//
//  Song.swift
//  v8
//
//  Created by MacLab10 on 3.12.24..
//

import Foundation

struct  Song: Identifiable{
     
    let id=UUID()
    let name: String
    let artist: String
    let duration: String
    var isPlaying:Bool
    let durationInSeconds:Int
}
