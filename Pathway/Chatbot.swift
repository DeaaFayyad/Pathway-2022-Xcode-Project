//
//  Chatbot.swift
//  Pathway
//
//  Created by Deaa Fayyad on 13/2/2022.
//

import SwiftUI

struct Chatbot: View {
    
    // States the variables for the chatbot, so that the system understands
    
    @State private var messageText = ""
    @State var messages: [String] = ["Welcome to Pathway's Chat Bot!"]
    @State var Chatbotname: String = ""

    var body: some View {
        VStack {
            HStack {
                TextField("Chatbot", text: $Chatbotname)
                    .font(.largeTitle)
                
                Image(systemName: "bubble.left.fill")
                    .font(.system(size: 26))
                    .foregroundColor(Color.red)
            }
            
            ScrollView { // Allows the view to be scrollable
                ForEach(messages, id: \.self) { message in // 'Self' refers to the current object within the structure, therefore, the messages in this case                                                 would be the main forms of objects which move between the user and the chatbot
                    
                    // If the message contains [USER], that means it's us
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                        
                        // User message styles
                        HStack {
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(Color.white)
                                .background(Color.blue.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                        }
                    } else {
                        
                        // Bot message styles
                        HStack {
                            Text(message)
                                .padding()
                                .background(Color.gray.opacity(0.15))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                            Spacer()
                        }
                    }
                    
                }.rotationEffect(.degrees(180))
            }
            .rotationEffect(.degrees(180))
            .background(Color.gray.opacity(0.1))
            
            
            // Contains the Message bar details and UI
            HStack {
                TextField("Type something", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        sendMessage(message: messageText) 
                    }
                
                // Green text are all variables which were declared already earlier and restated here to tell the system what to do to send a message and recieve
                
                Button {
                    sendMessage(message: messageText)
                } label: {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(Color.red)
                }
                .font(.system(size: 26))
                .padding(.horizontal, 10)
            }
            .padding()
        }
    }

    func sendMessage(message: String) { //
        withAnimation {
            messages.append("[USER]" + message) // When the user is sending a message, it reads as '+ message'
            self.messageText = ""
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    messages.append(getBotResponse(message: message)) // When user sends a message, the system goes back to the 'BotResponses' swift file to                                                        analyse if it is able to answer the message
                }
            }
        }
    }
    }


struct Chatbot_Previews: PreviewProvider {
    static var previews: some View {
        Chatbot()
    }
}

