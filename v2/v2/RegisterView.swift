import SwiftUI

struct RegisterView: View {
    @State private var firstname:String=""
    @State private var lastname:String=""
    @State private var username:String=""
    @State private var password:String=""
    var body: some View {
        NavigationView{
            VStack {
                Text("Register View")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 160)
                
                Spacer()
                TextField("Firstname", text:$firstname)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 20)
                TextField("Lastname", text:$lastname)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 20)
                TextField("Username", text:$username)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 20)
                
                SecureField("Password", text:$password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 20)
                
                Button(action: {
                    
                }) {
                    Text("Register")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(width: 315, height: 50)
                        .background(Color.yellow.opacity(0.7))
                        .cornerRadius(10)
                }
                .padding(.bottom, 20)
                
                Spacer()
                
            }
            .background(Color.blue)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
