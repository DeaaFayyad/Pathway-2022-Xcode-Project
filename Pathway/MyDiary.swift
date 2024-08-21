//
//  MyDiaryHome.swift
//  Pathway
//
//  Created by Deaa Fayyad on 29/4/2022.
//

import SwiftUI

let dateFormatter = DateFormatter()

struct NoteItem: Codable, Hashable, Identifiable {
    
    // Declares the different variables and assigns them a property, like the id being a string
    let id: Int
    let text: String
    var date = Date()
    var dateText: String {
        dateFormatter.dateFormat = "MMM d yyyy, h:mm a"
        return dateFormatter.string(from: date)
    }
}

struct MyDiary : View {
    
    @State var items: [NoteItem] = { // Declares a variable
        
        // json refers to the storage and retrieval of data, in this case, the system is storing the entries of the user and later we can retreive and analyse them as well as delete if we desire
        guard let data = UserDefaults.standard.data(forKey: "notes") else { return [] }
        if let json = try? JSONDecoder().decode([NoteItem].self, from: data) {
            return json
        }
        return []
    }()
    
    // States the variables for the diary, so that the system understands
    
    @State var taskText: String = ""
    
    @State var showAlert = false
    
    @State var itemToDelete: NoteItem?
    
    var alert: Alert {
        Alert(title: Text("Hey!"),
              message: Text("Are you sure you want to delete this item?"),
              primaryButton: .destructive(Text("Delete"), action: deleteNote),
              secondaryButton: .cancel())
        // The alert which pops up when a user wants to delete one of their entries, allows for a safe UI
    }
    
    var inputView: some View {
        HStack { // The textfield for the user to write in, then complete their entry
            TextField("Write a note ...", text: $taskText)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                .clipped()
            Button(action: didTapAddTask, label: { Text("Add") }).padding(8) .foregroundColor(.red)
        }
    }
    
    var body: some View {
        VStack {
            // Heading and subheading which gives instructions on how to delete an entry
            Text("My Diary")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Hold entry to delete!")
                .font(.headline)
                .fontWeight(.thin)
                .foregroundColor(.blue)
            
            inputView
            Divider()
            List(items) { item in
                VStack(alignment: .leading) { // All the UI elements, placing them in the correct position
                    Text(item.dateText).font(.headline)
                    Text(item.text).lineLimit(nil).multilineTextAlignment(.leading)
                }
                // Delete function, as self refers to the object in the structure, the note is the self and by long pressing, it will show the alert from above prompting the user if they want to delete the item
                .onLongPressGesture {
                    self.itemToDelete = item
                    self.showAlert = true
                }
            }
            // Here the alert is presented to the user, when they long press and want to delete an entry
            .alert(isPresented: $showAlert, content: {
                alert
            })
        }
    }
    
    func didTapAddTask() { // When the 'Add' button is pressed, the entry which the user typed out gets added to the list of entries, including the date and time of entry
        let id = items.reduce(0) { max($0, $1.id) } + 1
        items.insert(NoteItem(id: id, text: taskText), at: 0)
        taskText = ""
        save()
    }
    
    func deleteNote() { // Allows user to delete an entry they do not wish to keep.
        guard let itemToDelete = itemToDelete else { return }
        items = items.filter { $0 != itemToDelete }
        save()
    }
    
    func save() { // Allows the entries to be stored and ready for retreival by the user, 'json' allows this
        guard let data = try? JSONEncoder().encode(items) else { return }
        UserDefaults.standard.set(data, forKey: "notes")
    }
}

struct MyDiary_Previews: PreviewProvider {
    static var previews: some View {
        MyDiary()
    }
}
