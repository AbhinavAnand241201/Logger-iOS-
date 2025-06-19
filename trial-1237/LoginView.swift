//
//  LoginView.swift
//  trial-1237
//
//  Created by ABHINAV ANAND  on 19/06/25.
//


import SwiftUI

struct LoginView: View {
    
    // @State is a property wrapper that allows us to create a source of truth
    // for data in our view. When this data changes, SwiftUI automatically
    // re-renders any parts of the view that depend on it.
    // Analogy: Think of it as a special box. Anytime the content of the box
    // changes, anything looking at the box is notified.
    @State private var email = ""
    @State private var password = ""
    
    // We define our custom brand color here. This makes it easy to reuse
    // and change later if we need to.
    let radiantOrange = Color(red: 255/255, green: 121/255, blue: 63/255)

    var body: some View {
        // ZStack allows us to layer views on top of each other.
        // We're using it here to create a background for our whole screen.
        ZStack {
            // A simple white background
            Color.white
                .ignoresSafeArea() // Makes the color extend to the edges of the screen

            // VStack arranges its children in a vertical line.
            VStack(spacing: 20) {
                
                Spacer()
                
                // --- App Title ---
                Text("My Contacts")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(radiantOrange)

                Text("Sign in to continue")
                    .font(.headline)
                    .foregroundColor(.gray)
                
                Spacer()
                
                // --- Email Field ---
                VStack(alignment: .leading) {
                    Text("Email Address")
                        .font(.headline)
                        .foregroundColor(.gray)
                    TextField("you@example.com", text: $email)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                        .keyboardType(.emailAddress) // Shows the email keyboard
                        .autocapitalization(.none)
                }
                
                // --- Password Field ---
                VStack(alignment: .leading) {
                    Text("Password")
                        .font(.headline)
                        .foregroundColor(.gray)
                    // SecureField is like TextField but for sensitive data.
                    SecureField("Enter your password", text: $password)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                }
                
                Spacer()

                // --- Sign In Button ---
                Button(action: {
                    // We'll add Firebase login logic here later
                    print("Attempting to sign in with Email/Password...")
                }) {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(radiantOrange)
                        .cornerRadius(12)
                        .shadow(color: radiantOrange.opacity(0.4), radius: 10, y: 5)
                }
                
                // --- Social Login (Placeholder) ---
                Button(action: {
                    // We'll add Google Sign-In logic here later
                    print("Attempting to sign in with Google...")
                }) {
                    HStack {
                        Image(systemName: "g.circle.fill") // A simple Google icon
                            .resizable()
                            .frame(width: 24, height: 24)
                        Text("Sign In with Google")
                            .font(.headline)
                    }
                    .foregroundColor(radiantOrange)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(radiantOrange, lineWidth: 2)
                    )
                }
                
                Spacer()

                // --- Create Account Link (Placeholder) ---
                Button(action: {
                    // This could navigate to a sign-up screen
                    print("Navigate to sign-up view...")
                }) {
                    Text("Don't have an account? Sign Up")
                        .foregroundColor(.gray)
                }
                .padding(.bottom)
                
            }
            .padding(.horizontal, 30) // Add some side padding to the whole VStack
        }
    }
}

// The #Preview block lets us see our UI design in Xcode without
// having to run the full app in the simulator. It's incredibly useful
// for rapid UI development.
#Preview {
    LoginView()
}
