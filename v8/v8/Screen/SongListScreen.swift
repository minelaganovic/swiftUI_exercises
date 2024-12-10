//
//  SongListScreen.swift
//  v8
//
//  Created by MacLab10 on 3.12.24..
//

import SwiftUI

struct SongListScreen: View {
    
    let sonngs=[
        Song(name: "Pesma 1", artist: "Umetink 1", duration: "02:00", isPlaying: false, durationInSeconds:120),
        Song(name: "Pesma 2", artist: "Umetink 2", duration: "03:00", isPlaying: false, durationInSeconds:180),
        Song(name: "Pesma 3", artist: "Umetink 3", duration: "02:00", isPlaying: false, durationInSeconds:120),
        Song(name: "Pesma 4", artist: "Umetink 4", duration: "02:00", isPlaying: false, durationInSeconds:120),
        Song(name: "Pesma 5", artist: "Umetink 5", duration: "02:00", isPlaying: false, durationInSeconds:120),
        Song(name: "Pesma 1", artist: "Umetink 1", duration: "02:00", isPlaying: false, durationInSeconds:120),
        Song(name: "Pesma 2", artist: "Umetink 2", duration: "02:00", isPlaying: false, durationInSeconds:120),
        Song(name: "Pesma 3", artist: "Umetink 3", duration: "02:00", isPlaying: false, durationInSeconds:120),
        Song(name: "Pesma 4", artist: "Umetink 4", duration: "02:00", isPlaying: false, durationInSeconds:120),
        Song(name: "Pesma 5", artist: "Umetink 5", duration: "02:00", isPlaying: false, durationInSeconds:120)
    ]
    var body: some View {
        
        NavigationView{
            VStack{
                
                HStack{
                    
                    Text("Music App")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 60)
                        .foregroundColor(.blue)
                }
                .padding()
                
                ScrollView{
                    VStack
                    {
                        ForEach(sonngs){
                            song in
                            NavigationLink(destination:SongDetailScreen(song: song))
                            {
                                SongRow(song:song)
                            }
                        }
                        
                    }
                }
                .padding()
            }
            
        }
    }
}

struct SongListScreen_Previews: PreviewProvider {
    static var previews: some View {
        SongListScreen()
    }
}
