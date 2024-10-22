import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        
            HStack {
                Text("Instagram")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Spacer()
                HStack(spacing: 20) {
                    Button(action: {}) {
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.black)
                    }
                    Button(action: {}) {
                        Image(systemName: "paperplane")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.black)
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top, 10)

            // Stories Section
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                        VStack {
                        ZStack {
                            Circle()
                                .stroke(Color.gray, lineWidth: 3)
                                .frame(width: 70, height: 70)
                            
                            Circle()
                                .frame(width: 65, height: 65)
                                .foregroundColor(.gray.opacity(0.4))
                            
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                            .scaledToFill()
                            
                            
                            Circle()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.blue)
                                .overlay(
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                        .font(.system(size: 12, weight: .bold))
                                )
                                .offset(x: 25, y: 25)
                        }
                        Text("Your Story")
                            .font(.caption)
                    }

                   
                    ForEach(1..<6) { i in
                        VStack {
                            ZStack {
                                Circle()
                                    .stroke(LinearGradient(gradient: Gradient(colors: [.red, .purple, .yellow]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3)
                                    .frame(width: 70, height: 70)
                                
                                Circle()
                                    .frame(width: 65, height: 65)
                                    .foregroundColor(.gray.opacity(0.4))
                                
                                Text("User\(i)")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                            Text("User\(i)")
                                .font(.caption)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top, 10)
            .padding(.bottom, 20)
            
           
            ScrollView {
                ForEach(1..<6) { i in
                    VStack(alignment: .leading) {
                        // Username
                        HStack {
                            Text("Username\(i)")
                                .font(.headline)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                  
                        Image("Image")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 300)
                            .clipped()
                        
              
                        HStack {
                            Button(action: {}) {
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                            }
                            Button(action: {}) {
                                Image(systemName: "bubble.right")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .padding(.leading, 10)
                            }
                            Button(action: {}) {
                                Image(systemName: "paperplane")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .padding(.leading, 10)
                            }
                            Spacer()
                        }
                        .padding()
                    }
                    Divider()
                }
            }
            
           
            HStack {
                Spacer()
                Button(action: {}) {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "plus.app")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                }
             
            }
            .padding()
            .background(Color.white)
            .shadow(radius: 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
