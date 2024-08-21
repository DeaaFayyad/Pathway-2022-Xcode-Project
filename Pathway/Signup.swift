//
//  Signup.swift
//  Pathway
//
//  Created by Deaa Fayyad on 21/1/2022.
//

import SwiftUI

struct Signup: View {
    
    @State private var Firstname = ""
    
    @State private var Lastname = ""
    
    @State private var password = ""
    
    @State private var wrongPassword = 0
    
    @State private var wrongFirstname = 0
    
    @State private var wrongLastname = 0
    
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.red
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.gray)
                    
                    TextField("First name", text: $Firstname)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongFirstname))
                        .foregroundColor(.red)
                    
                    TextField("Last name", text: $Lastname)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongLastname))
                        .foregroundColor(.red)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                        .foregroundColor(.red)
                    
                    Button("Login") {
                        authenticateUser(Firstname: Firstname, Lastname: Lastname, password: password)
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.red)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Main_Menu(), isActive: $showingLoginScreen) {
                        
                    }
                }
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
    func authenticateUser(Firstname: String, Lastname: String, password: String) {
        if Firstname.lowercased() == "1" {
            wrongFirstname = 0
            if Lastname.lowercased() == "2" {
                wrongLastname = 0
                if password.lowercased() == "3" {
                    wrongPassword = 0
                    showingLoginScreen = true
                } else {
                wrongPassword = 2
                }
            } else {
            wrongFirstname = 2
            }
        } else {
        wrongLastname = 2
        }
    }
}


struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
            
    }
}
