//
//  ToDoListItem.swift
//  Pathway
//
//  Created by Deaa Fayyad on 6/6/2022.
//

import Foundation
import CoreData

class ToDoListItem: NSManagedObject, Identifiable {
    @NSManaged var name: String? // Sets the name of the item to a string variable
    @NSManaged var createdAt: Date? // Sets the date created of the item to a date variable
}

extension ToDoListItem {
    static func getAllToDoListItems() -> NSFetchRequest<ToDoListItem> {
        let request: NSFetchRequest<ToDoListItem> =
        ToDoListItem.fetchRequest() as!
        NSFetchRequest<ToDoListItem>
        
        let sort = NSSortDescriptor(key: "createdAt", ascending: true)
        request.sortDescriptors = [sort]
        
        return request
    }
}
