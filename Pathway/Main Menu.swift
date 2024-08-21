//
//  Main Menu.swift
//  Pathway
//
//  Created by Deaa Fayyad on 24/1/2022.
//

import SwiftUI

// Instead of this being the main view like other scripts, as it is the main menu, it has split up structures which allow for the navigationbar at the bottom of the screen so the user can navigate to other main parts of the app. Below is the Homeview, which includes all the main modules of the app (chatbot, diary, meditation, tasks, motivation)

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.red
            .navigationTitle("Home")
            .navigationBarHidden(true)
                Text("Home")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .offset(x: 0, y: -330)
                    .toolbar {
                ToolbarItemGroup (placement: .navigationBarTrailing) {
                    NavigationLink (destination: Settings()) {
                    Image(systemName: "gear")
                }
                Spacer()
            }
        }
                
            // The coding below, are all very similar and do the same thing for different modules of the app, each one add a button function which when tapped on, takes the user to the specified module of the app. I.e. the first one takes the user to the chatbot.
            NavigationLink ("Chatbot", destination: Chatbot())
            .accessibility(label: Text("Chatbot"))
            .accessibility(value: Text("Chatbot"))
            .foregroundColor(Color.black)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.blue, lineWidth: 30)
            )
            .frame(alignment: .center)
            .background(Color.blue)
            .offset(y: -200)
            .offset(x: -100)
                
            // Takes the user to the 'My Diary' module of the app
            NavigationLink ("My Diary", destination: MyDiary())
            .foregroundColor(Color.black)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.blue, lineWidth: 30)
            )
            .frame(alignment: .center)
            .background(Color.blue)
            .offset(y: -200)
            .offset(x: 100)
                
            // Takes the user to the 'My Motivation' module of the app
            NavigationLink ("My Motivation", destination: MyMotivation())
            .foregroundColor(Color.black)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.blue, lineWidth: 30)
            )
            .frame(alignment: .center)
            .background(Color.blue)
            .offset(y: 200)
            .offset(x: -0)
              
            // Takes the user to the 'My Tasks' module of the app
            NavigationLink ("My Tasks", destination: MyTasks())
            .foregroundColor(Color.black)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.blue, lineWidth: 30)
            )
            .frame(alignment: .center)
            .background(Color.blue)
            .offset(y: -0)
            .offset(x: 100)
                
            // Takes the user to the 'Meditation' module of the app
            NavigationLink ("Meditation", destination: Meditation())
            .foregroundColor(Color.black)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.blue, lineWidth: 30)
            )
            .frame(alignment: .center)
            .background(Color.blue)
            .offset(y: 0)
            .offset(x: -100)
                
               
                    }
                }
                .navigationBarBackButtonHidden(true)
            }
        }


        // As menioned on the top of the script, there are different structures which allow for the bar at the bottom to be possible, below is the 'Rewards' tab, which is not coded to function properly
struct RewardsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.red
                    .navigationTitle("Rewards")
                    .navigationBarHidden(true)
                        Text("Rewards")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .offset(x: 0, y: -330)
                Text("COMING SOON!!!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.yellow)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

// The structure for the 'Advice' tab on the bottom bar
struct AdviceView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.red
                    .navigationTitle("Advice")
                    .navigationBarHidden(true)
                        Text("Advice")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .offset(x: 0, y: -330)
                
            }
        }
    }
}

// The structure for the 'Help' tab on the bottom bar
struct HelpView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.red
                    .ignoresSafeArea()
                Circle()
                    .scale(2)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.8)
                    .foregroundColor(.white)
                ScrollView { // This allows the user to scroll through the page
                VStack {
                    Group { // Sometimes the structure may become full with elements such as text or assets, grouping every number of them allows for the error to not come up
                        
                        // All the questions which I think would be the most popular from users are typed out into text boxes with the answers below them
                    Text("Help")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.gray)
                    
                    Text("Question: Why doesn't the chatbot reply to some of my messages?")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 80)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.red)
                    Text("Answer: Our chatbot is still in development therefore, it hasn't learnt all it's responses yet.")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 100)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.blue)
                    Text("Question: How does the quote of the moment work?")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 80)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.red)
                    Text("Answer: As soon as you open the page, a random image from the previous page will be generated, and when you exit and reopen the page, the image will be changed from last time.")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 170)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.blue)
                    Text("Question: What can I message to the chatbot?")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 80)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.red)
                    Text("Answer: You can message anything you want to the chatbot however, it may send you back a generic response, meaning it doesn't know the answer to your question or message.")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 170)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.blue)
                    Text("Question: What can I message to the chatbot?")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 80)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.red)
                    Text("Answer: You can message anything you want to the chatbot however, it may send you back a generic response, meaning it doesn't know the answer to your question or message.")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 170)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.blue)
                    Text("Question: How do I set reminders for meditating daily?")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 80)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.red)
                    }
                    Group {
                    Text("Answer: You can set scheduled notifications after entering the 'My Motivation' section, by first requesting permission from your device to send notifications, then you are able to schedule the notification!")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 170)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.blue)
                    }
                    }   
                }
            }
        }
    }
}


// The structure for the 'Profile' tab on the bottom bar
struct ProfileView: View {
    
    // All the variables for the profile tab are stated for the system to understand whats happening
    @State private var FirstnameText = "First name"
    @State private var LastnameText = "Last name"
    @State private var AppText = "How do you feel right now?"
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.red
                    .navigationTitle("My Profile")
                    .navigationBarHidden(true)
                        Text("My Profile")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .offset(x: 0, y: -330)
                VStack {
                    // The text editor allows the user to type in whatever they want into a textbox, by using the stated variables from above to let the user know what to type inside
                    TextEditor(text: $FirstnameText)
                        .frame(width: 250, height: 40)
                        .offset(x: 60, y: 10)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                        .navigationTitle("Profile")
                    TextEditor(text: $LastnameText)
                        .frame(width: 250, height: 40, alignment: .center)
                        .offset(x: 60, y: 10)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                        .navigationTitle("Profile")
                    TextEditor(text: $AppText)
                        .frame(width: 250, height: 60, alignment: .center)
                        .offset(x: 60, y: 10)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                        .navigationTitle("Profile")
                    Text("First Name:")
                        .frame(width: 100, height: 40)
                        .foregroundColor(Color.black)
                        .background(Color.blue)
                        .offset(x: -140, y: -155)
                    Text("Last Name:")
                        .frame(width: 100, height: 40)
                        .foregroundColor(Color.black)
                        .background(Color.blue)
                        .offset(x: -140, y: -155)
                    Text("Currently Feeling:")
                        .frame(width: 100, height: 60)
                        .foregroundColor(Color.black)
                        .background(Color.blue)
                        .offset(x: -140, y: -155)
                        
                    
                }
            }
        }
    }
}
            
// This structure is what makes the whole UI of the main menu possible, it allows for the bottom bar to function properly and allow the user to navigate between views with ease
struct Main_Menu: View {
    var body: some View {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                RewardsView()
                    .tabItem {
                        Image(systemName: "star.circle")
                        Text("Rewards")
                    }
                AdviceView()
                    .tabItem {
                        Image(systemName: "exclamationmark.bubble")
                        Text("Advice")
                    }
                HelpView()
                    .tabItem {
                        Image(systemName: "questionmark")
                        Text("Help")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "face.smiling.fill")
                        Text("Profile")
                    }
            
        }
        }
        }

struct Main_Menu_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Main_Menu()
                .preferredColorScheme(.light)
            AdviceView()
        }
    }
}




