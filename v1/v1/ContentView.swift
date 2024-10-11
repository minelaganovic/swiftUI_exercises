import SwiftUI

struct ContentView: View {
        var body: some View {
            VStack {
                Text("WeatherApp")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 60)
                
                Spacer()
                
                TextField("Username", text: .constant(""))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 20)
          
                            SecureField("Password", text: .constant(""))
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                                .padding(.horizontal, 40)
                                .padding(.bottom, 20)
                      
                            Button(action: {
                               
                            }) {
                                Text("Login")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .frame(width: 315, height: 50)
                                    .background(Color.yellow.opacity(0.7))
                                    .cornerRadius(10)
                            }
                            .padding(.bottom, 20)
                            
                            Spacer()
                
                          HStack {
                              Text("Don't have an account?")
                                  .foregroundColor(.white)
                              Button(action: {
                            
                              }) {
                                  Text("Register")
                                      .foregroundColor(.yellow)
                              }
                          }
                          .padding(.bottom, 30)
                      }
                      .background(Color.blue)
                      .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
