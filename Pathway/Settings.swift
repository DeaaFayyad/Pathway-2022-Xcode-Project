//
//  Settings.swift
//  Pathway
//
//  Created by Deaa Fayyad on 14/4/2022.
//

import SwiftUI

struct SettingsHomeView: View {
    
    var body: some View {
        NavigationView {
        
            Form {
            
                Section(header: Text("Display"), // Section header
                        footer: Text("System will override Dark Mode and use the current device theme")) { // Tells the user what will happen when pressing button
                    
                    Toggle(isOn: .constant(true), // Adds a toggle button for when the user wants to turn the setting on or off
                           label: {
                    Text("Dark Mode")
                    })
                    
                    Toggle(isOn: .constant(true), // Adds a toggle button for when the user wants to turn the setting on or off
                           label: {
                    Text("Use System Settings")
                    })
                }
            }
        }
        .navigationTitle("Settings Home") // Title of the view
    }
    
}

struct DisplayView: View { // Additional view for a different section for the settings menu
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
            }
            .navigationTitle("Display")
        }
    }
}

struct Settings: View { // Creates a structure with a tabview, i.e. bottom bar where the user can navigate through a couple views
    var body: some View {
            TabView {
                SettingsHomeView() // One of the views in the bottom bar
                    .tabItem {
                        Image(systemName: "gear.circle") // Sets the UI of the view button to navigate
                        Text("Settings Home")
                    }
                DisplayView() // The second view in the bottom bar
                    .tabItem {
                        Image(systemName: "display") // Sets the UI of the view button to navigate
                        Text("Display")
                    }
            }
    }
}


struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
