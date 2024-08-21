//
//  Meditation.swift
//  Pathway
//
//  Created by Deaa Fayyad on 14/4/2022.
//

import SwiftUI
import UserNotifications


struct Meditation: View {
        var body: some View {
            NavigationView {
                ScrollView {
            VStack {
                Group {
                Button("Request Permission") { // Button which when pressed, authorises the app to send alerts and notifications to the users device
                    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                        if success {
                            print("All set!") // For the output below, if the notification request is successful, will print 'All Set!'
                        } else if let error = error {
                            print(error.localizedDescription) // If the notifiication request has an error, will print 'error....'
                        }
                        
                    }
                   
                }
                Spacer()
                Button("Schedule Notification for 1 Hour") { // Schedule notification button has an automated timer to it, which when pressed by the user, in the timeinterval after being pressed, the user will recieve the notification from the app
                    // PRESS CMD + L TO SEE NOTIFICATION ON THE SIMULATOR
                    let content = UNMutableNotificationContent()
                    content.title = "It's meditation time!" // Title of the notification
                    content.subtitle = "Chill out and take a breather, let your mind come to rest." // Subheading / message from the notification
                    content.sound = UNNotificationSound.default // Default iOS notification sound
                    
                    let trigger = UNTimeIntervalNotificationTrigger (timeInterval: 60, repeats: false) // Time interval which the notification will send after pressing the button
                    
                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                    
                    UNUserNotificationCenter.current().add(request)
                }
                
                
            Spacer()
            Text("Welcome to Meditation!") // Greets the user to the meditation screen
                .font(.title)
                .bold()
                .foregroundColor(.blue)
                .padding()
                .background(Color.black)
                .padding()
                Spacer()
            HStack{
                // Some assets / images
                Spacer()
                Image("girlmonk")
                .resizable()
                .scaledToFit()
                .frame(width: 150.0,height:200)
                Spacer()
                Image("boymonk")
                .resizable()
                .scaledToFit()
                .frame(width: 150.0,height:200)
                Spacer()
            }
                Spacer()
                NavigationLink(destination: Meditationtimer()) {
                    Text("Start Today's Session") // Button which takes the user to the 'meditationtimer' module, for the user to start their meditation session
                        .font(.headline)
                        .bold()
                        .foregroundColor(.blue)
                        .padding()
                        .background(Color.black)
                }
                    .padding()
                Spacer()
                }
                Group {
                    Text("OR")
                    Spacer()
                    Text("New to Meditation? Start the tutorial below")
                    Spacer()
                    Image(systemName: "arrow.down")
                    Spacer()
                NavigationLink(destination: Meditationtutorial()) {
                    Text("Meditation Tutorial") // Button which takes the user to the 'meditationtutorial' module, for users who are new to meditation to learn and feel comfortable before endulging in it
                        .font(.headline)
                        .bold()
                        .foregroundColor(.blue)
                        .padding()
                        .background(Color.black)
                    }
                }
            }
        }
    }
}
}

struct Meditation_Previews: PreviewProvider {
    static var previews: some View {
        Meditation()
    }
}
