//
//  WeatherApp
//

import SwiftUI

struct WeatherAppView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(isNight ? Color.black.gradient : Color.blue.gradient)
                .ignoresSafeArea()
            
            VStack {
            
                Text("Novi Pazar, NP")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
            
                VStack(spacing: 10) {
                    Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("36°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
               
                HStack(spacing: 20) {
                    VStack {
                        Text("TUE")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .symbolRenderingMode(.multicolor)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        Text("36°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack {
                        Text("WED")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "sun.max.fill")
                            .symbolRenderingMode(.multicolor)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        Text("40°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack {
                        Text("THU")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "wind.snow")
                            .symbolRenderingMode(.multicolor)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        Text("15°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack {
                        Text("FRI")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "sunset.fill")
                            .symbolRenderingMode(.multicolor)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        Text("20°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack {
                        Text("SAT")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "snow")
                            .symbolRenderingMode(.multicolor)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        Text("5°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                }
                
                Spacer()
                
                // Dugme za promenu stanja (dan/noć)
                Button {
                    isNight.toggle()
                } label: {
                    Text("Change Day Time")
                        .background(Color.white)
                        .foregroundColor(Color.blue)
                        .cornerRadius(8)
                        .font(.largeTitle)
                        .padding()
                }
                
                Spacer()
            }
        }
    }
}

struct WeatherAppView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
