//
//  SongRow.swift
//  v8
//
//  Created by MacLab10 on 3.12.24..
//

import SwiftUI

struct SongRow: View {

    let song: Song
    @State private var isLike=false
    
    var body: some View {
        HStack{
            
            Image(systemName: "music.note")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.blue)
            
            VStack{
                Text(song.name)
                    .fontWeight(.semibold)
                
                Text(song.artist)
                    .font(.subheadline)
                
                Text("Duration:\(song.duration)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            
            Button(action: {
                isLike.toggle()
            }){
                Image(systemName: isLike ? "heart.fill" : "heart")
                    .foregroundColor(isLike ?.red : .gray)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(14)
    }
}

struct SongRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SongRow(song: Song(name: "Pesma 1", artist: "Umetnik 1", duration: "02:00", isPlaying: false, durationInSeconds:120))
        }
        
    }
}
