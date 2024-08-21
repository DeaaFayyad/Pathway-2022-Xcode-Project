//
//  MyTasks.swift
//  Pathway
//
//  Created by Deaa Fayyad on 22/4/2022.
//

// Unfortunately, this script was unsuccessful, mainly because I did not check the 'coredata' box when I created the project which is critical for the script to function properly, therefore it may crash when you press the 'Save' button. But it is meant to add the entry to a list. Does not work unfortunately :((((((((((


import SwiftUI

struct MyTasks: View {
    
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(fetchRequest: ToDoListItem.getAllToDoListItems()) var items: FetchedResults<ToDoListItem> // Allows the system to load coredata results directly to the UI elements in the view
    
    @State var text: String = "" // Sets 'text' as a string propertu
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("New Items")) { // Sets the section header
                    HStack {
                        TextField("Enter new item....", text: $text) // User enters a new item in this textfield
                        
                        Button(action: {
                            
                            if !text.isEmpty {
                                
                                // When user enters a new item in the textfield, the system will set the name to the text entered, and additionally group it with the data, and time which the entry was made
                                
                                let newItem = ToDoListItem(context: context)
                                newItem.name = text
                                newItem.createdAt = Date()
                                
                                
                                do {
                                    try context.save() // To save the entry
                                }
                                catch {
                                    print(error) // prints an error if unsuccessful
                                }
                                
                                text = "" // Sets the text initially to an empty string
                                
                            }
                            
                        }, label: {
                            Text("Save") // Save button for the user to enter their task and for the system to store and save
                        })
                    }
                }
                
                Section {
                    // UI for the list of items, aligns it appropriately and adds the headings for the name of entry and the date entered
                    ForEach(items) { ToDoListItem in
                        VStack(alignment: .leading) {
                            Text(ToDoListItem.name!)
                                .font(.headline)
                            Text("\(ToDoListItem.createdAt!)")
                            
                        }
                    }.onDelete { IndexSet in
                        
                        // Delete function to allow the user to delete any entry which they feel they do not need or want entered
                        
                        guard let index = IndexSet.first else {
                            return
                        }
                        let itemToDelete = items[index] // The 'itemToDelete' property will equal the items in the list, which can be deleted because of this code
                        context.delete(itemToDelete)
                        do {
                            try context.save() // To delete the entry
                        }
                        catch {
                            print(error) // prints an error if unsuccessful
                        }
                    }
                }
            }
        }
        .navigationTitle("My Tasks") // Title for the page
    }
}

struct MyTasks_Previews: PreviewProvider {
    static var previews: some View {
        MyTasks()
    }
}
