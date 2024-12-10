//
//  SongDetailScreen.swift
//  v8
//
//  Created by MacLab10 on 3.12.24..
//

import SwiftUI

struct SongDetailScreen: View {
    let song:Song
    @State private var isPlaying=false
    @State private var timer: Timer?
    @State private var reaminingDuration:Int
    
    init(song:Song){
        self.song=song
        self._reaminingDuration = State(initialValue:song.durationInSeconds)
    }
    
    var body: some View {
        ZStack{
            
            VStack{
                
                Image(systemName: "music.note")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.pink)
                
                Text(song.name)
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                Text(song.artist)
                    .font(.title2)
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                
                Text("Duration:\(formatDuration(reaminingDuration))")
                    .font(.title3)
                    .foregroundColor(.blue)
            
                Spacer()
                }
            
            VStack{
                
                Spacer()
                HStack{
                    Button(action:{}){
                        
                        Image(systemName: "backward.fill")
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                    Spacer()
                    Button(action:{
                        isPlaying.toggle()
                        playSong()
                    }){
                        
                        Image(systemName: isPlaying ? "pause.circle.fill" : "play.fill")
                            .font(.title)
                            .foregroundColor(.green)
                    }
                    
                    Spacer()
                    Button(action:{}){
                        
                        Image(systemName: "forward.fill")
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                    
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .shadow(radius: 14)
                
            }
        }
        .padding()
        .ignoresSafeArea(edges:.bottom)
    }
    
    private func playSong(){
        
        if isPlaying{
            startTimer()
        }else
        {
            stopTimer()
        }
        
    }
    
    private func startTimer(){
        timer=Timer.scheduledTimer(withTimeInterval: 1.0, repeats:true){ _ in
            if reaminingDuration > 0{
                reaminingDuration -= 1
            }else{
                stopTimer()
                isPlaying=false
            }
        }
    }
    
    private func stopTimer(){
        timer?.invalidate()
        timer=nil
    }
    private func formatDuration(_ seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds = seconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
}

struct SongDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        SongDetailScreen(song: Song(name: "Pesma 1", artist: "Umetnik 1", duration: "01:00", isPlaying: false, durationInSeconds: 60))
    }
}
