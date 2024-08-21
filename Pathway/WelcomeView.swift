//
//  ContentView.swift
//  Pathway
//
//  Created by Deaa Fayyad on 16/1/2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {

            ZStack {
                
                Color(.red).edgesIgnoringSafeArea(.all)
            
            VStack {
                NavigationLink(destination: Signup()) {
                    Text("LETS DO THIS!")
                        .foregroundColor(Color.black)
                        .frame(width: 150, height: 50, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .offset(y: 250)
                        .offset(x: 418)
                    // The above adds a navigation link meaning when you click the button specified, it will transport you to the next page
                    
                    // The text below adds a warm welcome to the users to get started with the app
                    Text("It's so great to see you!")
                        .foregroundColor(Color.black)
                        .frame(width: 375, height: 50, alignment: .center)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .offset(y: -30)
                        .offset(x: 140)
                    Text("Tap below to get started!")
                        .foregroundColor(Color.black)
                        .frame(width: 375, height: 50, alignment: .center)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .position(x: -55, y: 450)
                    Image(systemName: "arrow.down")
                        .position(x: -55, y: 500)
                    Text("WELCOME")
                        .font(.largeTitle)
                        .padding()
                        .frame(width: 200.0, height: 20.0)
                        .position(x: -75, y: -50)
                        .foregroundColor(Color.black)
                    Text("TO")
                        .font(.largeTitle)
                        .padding()
                        .position(x: -83, y: -290)
                        .frame(width: 200.0, height: 10.0)
                        .foregroundColor(Color.black)
                    Text("PATHWAY")
                        .font(.largeTitle)
                        .padding()
                        .position(x: -290, y: -200)
                        .frame(width: 200.0, height: 20.0)
                        .foregroundColor(Color.black)
            }         }
            }
        }
    }
}



struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

