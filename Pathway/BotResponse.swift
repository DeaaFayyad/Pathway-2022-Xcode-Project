//
//  BotResponse.swift
//  Pathway
//
//  Created by Deaa Fayyad on 3/2/2022.
//

import Foundation

func getBotResponse(message: String) -> String { // Declares the message as a string property.
    
    // When the user sends a message to the chatbot, it retrieves the information in this script to determine whether it can answer the message or not
    
    let tempMessage = message.lowercased() // Allows the chatbot to understand any message by eliminating uppercased letters in the users message
    
    // All the common user messages, with replies for the chatbot to answer appropriately
    
    if tempMessage.contains("hello") {
        return "Hey there!"
    } else if tempMessage.contains("goodbye") {
        return "Talk to you later!"
    } else if tempMessage.contains("how are you") {
        return "I'm fine how are you"
    } else if tempMessage.contains("what are you up to") {
        return "Talking to you :)"
    } else if tempMessage.contains ("hey") {
        return "Hello"
    } else if tempMessage.contains ("hi") {
        return "Hey"
    } else if tempMessage.contains ("hows life") {
        return "Going great!, how about yours?"
    } else if tempMessage.contains ("whats your name") {
        return "I'm an AI, you may name me whatever you wish!"
    } else if tempMessage.contains ("i need help with something") {
        return "Sure, whatever it is, I'll try my best to help!"
    } else if tempMessage.contains ("whats up") {
        return "nothing much, chattin' to ya!"
    } else if tempMessage.contains ("hows it going") {
        return "Good, yourself?"
    } else if tempMessage.contains ("how are you doing") {
        return "Great! Yourself?"
    } else if tempMessage.contains ("hows your day") {
        return "Going good sir, how about yours?"
    } else if tempMessage.contains ("how r u") {
        return "I'm good, how are you?"
    } else if tempMessage.contains ("r u good") {
        return "Yessir I am, how about you?"
    } else if tempMessage.contains ("i'm good") {
        return "Thats nice to hear!"
    } else if tempMessage.contains ("i'm going good") {
        return "Thats awesome!"
    } else if tempMessage.contains ("i'm great") {
        return "Good for you!"
    } else if tempMessage.contains ("my days going good") {
        return "Amazing!"
    } else if tempMessage.contains ("my days well") {
        return "Thats awesome!"
    } else if tempMessage.contains ("im awesome") {
        return "You are awesome!"
    } else if tempMessage.contains ("im going great") {
        return "Thats nice to hear!"
    } else if tempMessage.contains ("i need help") {
        return "Sure, whatever it is, I'll try my best to help!"
    } else if tempMessage.contains ("i'm having trouble") {
        return "Sure, whatever it is, I'll try my best to help!"
    } else if tempMessage.contains ("i need some advice") {
        return "Sure, whatever it is, I'll try my best to help!"
    } else if tempMessage.contains ("help me") {
        return "Sure, whatever it is, I'll try my best to help!"
    } else if tempMessage.contains ("help") {
        return "Sure, whatever it is, I'll try my best to help!"
    } else if tempMessage.contains ("i need some support") {
        return "Sure, whatever it is, I'll try my best to help!"
    } else if tempMessage.contains ("i have troubles") {
        return "Sure, whatever it is, I'll try my best to help!"
    } else if tempMessage.contains ("im troubled") {
        return "Sure, whatever it is, I'll try my best to help!"
    } else if tempMessage.contains ("i need advice") {
        return "Sure, whatever it is, I'll try my best to help!"
    } else if tempMessage.contains ("advise me ") {
        return "Sure, whatever it is, I'll try my best to help!"
    } else if tempMessage.contains ("im depressed") {
        return "Oh, thats terrible to hear, I'll try my best to give advice and help ya out! May I ask, what has spiked this depression"
    } else if tempMessage.contains ("i have depression") {
        return "Oh, thats terrible to hear, I'll try my best to give advice and help ya out! May I ask, what has spiked this depression"
    } else if tempMessage.contains ("im anxious ") {
        return "Oh, thats terrible to hear, I'll try my best to give advice and help ya out! May I ask, what has spiked this anxiety"
    } else if tempMessage.contains ("i have anxiety") {
        return "Oh, thats terrible to hear, I'll try my best to give advice and help ya out! May I ask, what has spiked this anxiety"
    } else if tempMessage.contains ("i want to stop my deprerssion") {
        return "We all want to get rid of the terrible feelings in our mind and soul, I'll try my best to give advice and help ya out! May I ask, what has spiked this depression"
    } else if tempMessage.contains ("i dont want to be depressed") {
        return "We all want to get rid of the terrible feelings in our mind and soul, I'll try my best to give advice and help ya out! May I ask, what has spiked this depression"
    } else if tempMessage.contains ("i want to stop my anxiety") {
        return "We all want to get rid of the terrible feelings in our mind and soul, I'll try my best to give advice and help ya out! May I ask, what has spiked this anxiety"
    } else if tempMessage.contains ("i dont want to be anxious") {
        return "We all want to get rid of the terrible feelings in our mind and soul, I'll try my best to give advice and help ya out! May I ask, what has spiked this anxiety"
    } else if tempMessage.contains ("A family member of mine has passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my dad passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my father passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my mum passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my mother passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my bro passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my brother passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my sis passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my sister passwed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my sibling passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("a family member passsed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my grandma passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my grandmother passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my nan passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my grandpa passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my grandfather passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my pops passed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my best friend passsed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my dad died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my father died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my mum died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my mother died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my bro died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my brother died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my sis died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my sister passwed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my sibling died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("a family member passsed away") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my grandma died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my grandmother died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my nan died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my grandpa died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my grandfather died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my pops died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("my best friend died") {
        return "Oh, that’s so sad, I’m terribly sorry for your loss, I’m always here to talk with you! If you need anything, just feel free to message me at any time!"
    } else if tempMessage.contains ("what should I do") {
        return "Try and calm down, we all deal with depression and anxiety for many reasons, but in this situation we must stay calm and clear our minds, of course, if it is grief that has impacted this change, it will be hard, but you have to believe in yourself and keep pushing, they wouldn't want you to be depressed right now, remember that!"
    } else if tempMessage.contains ("what do I do") {
        return "Try and calm down, we all deal with depression and anxiety for many reasons, but in this situation we must stay calm and clear our minds, of course, if it is grief that has impacted this change, it will be hard, but you have to believe in yourself and keep pushing, they wouldn't want you to be depressed right now, remember that!"
    } else {
    return "Sorry, that is out of my scope and I am unable to answer, hopefully I'll learn soon! If it's anything health related, please feel free to visit the following links to find out more and get some professional advice! Links: https://www.beyondblue.org.au/ , https://headspace.org.au/"
    }
}
