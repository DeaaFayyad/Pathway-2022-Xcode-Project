//
//  Meditationtimer.swift
//  Pathway
//
//  Created by Deaa Fayyad on 21/5/2022.
//

import SwiftUI
import UserNotifications

struct Meditationtimer: View {
    var body: some View {

        Home()
    }
}

struct Meditationtimer_Previews: PreviewProvider {
    static var previews: some View {
        Meditationtimer()
    }
}

struct Home : View {
    
    // Sets all the variables for the system to understand the coding
    
    @State var start = false
    @State var to : CGFloat = 0
    @State var count = 0
    @State var time = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View{
        
        ZStack{ // Sets part of the UI
            
            Color.black.opacity(0.06).edgesIgnoringSafeArea(.all)
            
            
            VStack{
                
                ZStack{
                    
                    Circle() // UI of the timer
                    .trim(from: 0, to: 1)
                        .stroke(Color.black.opacity(0.09), style: StrokeStyle(lineWidth: 35, lineCap: .round))
                    .frame(width: 280, height: 280)
                    
                    Circle()
                        .trim(from: 0, to: self.to)
                        .stroke(Color.red, style: StrokeStyle(lineWidth: 35, lineCap: .round))
                    .frame(width: 280, height: 280)
                    .rotationEffect(.init(degrees: -90))
                    
                    
                    VStack{
                        
                        Text("\(self.count)") // The count of the timer in the circle, 'self' property as it is the main object in the structure
                            .font(.system(size: 65))
                            .fontWeight(.bold)
                        
                        Text("Of 10 minutes") // The amount of time in the timer
                            .font(.title)
                            .padding(.top)
                    }
                }
                
                HStack(spacing: 20){
                    
                    Button(action: {
                        
                        // The count of the timer in seconds, 'self' refers to the number of seconds as it is the main object in the structure
                        if self.count == 600{
                            
                            self.count = 0
                            withAnimation(.default){ // Adds animation to the circle when the timer is playing, red will flow through the transparent circle and fill it as the time gets higher
                                
                                self.to = 0
                            }
                        }
                        self.start.toggle()
                        
                    }) {
                        
                        HStack(spacing: 15){
                            
                            Image(systemName: self.start ? "pause.fill" : "play.fill")
                                .foregroundColor(.white)
                            
                            // Sets the play button, and when pressed, the pause button will appear
                            
                            Text(self.start ? "Pause" : "Play")
                                .foregroundColor(.white)
                        }
                        .padding(.vertical)
                        .frame(width: (UIScreen.main.bounds.width / 2) - 55)
                        .background(Color.red)
                        .clipShape(Capsule())
                        .shadow(radius: 6)
                    }
                    
                    Button(action: {
                        
                        // For the restart button below, when pressed, the main object (self) or the count will go to zero
                        
                        self.count = 0
                        
                        withAnimation(.default){
                            
                            self.to = 0
                        }
                        
                    }) {
                        
                        HStack(spacing: 15){
                            
                            Image(systemName: "arrow.clockwise")
                                .foregroundColor(.red)
                            
                            // Restart button UI
                            
                            Text("Restart")
                                .foregroundColor(.red)
                            
                        }
                        .padding(.vertical)
                        .frame(width: (UIScreen.main.bounds.width / 2) - 55)
                        .background(
                        
                            Capsule()
                                .stroke(Color.red, lineWidth: 2)
                        )
                        .shadow(radius: 6)
                    }
                }
                .padding(.top, 55)
            }
            
        }
        .onAppear(perform: {
            
            UNUserNotificationCenter.current().requestAuthorization(options: [.badge,.sound,.alert]) { (_, _) in // Sets a notification sound/ alert when the timer is finished
            }
        })
        .onReceive(self.time) { (_) in
            
            if self.start{
                
                // If the self.count is not equal to 600 seconds, then the count will add 1 second to the count, and will print 'hello' in the output. If count does equal 600, the toggle will work and will notify the user when the count is over.
                
                if self.count != 600{
                    
                    self.count += 1
                    print("hello")
                    
                    withAnimation(.default){
                        
                        self.to = CGFloat(self.count) / 600
                    }
                }
                else{
                
                    self.start.toggle()
                    self.Notify()
                }

            }
            
        }
    }
    
    func Notify(){
        
        let content = UNMutableNotificationContent()
        content.title = "Meditation Timer" // Title of the notification when the meditation timer is complete
        content.body = "Hey, congrats your daily meditation is over, how do you feel?" // Subtitle/ message when the meditation timer is complete
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 600, repeats: false) // After 600 seconds, which is the length of the timer, the notification will send. PRESS CMD + L TO SEE NOTIFICATION ON THE SIMULATOR
        
        let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
    }
}
