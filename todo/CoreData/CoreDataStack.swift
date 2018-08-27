//
//  CoreDataStack.swift
//  todo
//
//  Created by Jae Phil on 8/15/18.
//  Copyright © 2018 jaephillseo. All rights reserved.
//

import Foundation
import CoreData
class CoreDataStack {
    var container: NSPersistentContainer {
        let container = NSPersistentContainer(name: "TodoModel")
        container.loadPersistentStores { (description, error) in
            guard error == nil else{
                print("Error: \(error!)")
                return
            }
        }
        return container
    }
    
    var managedContext: NSManagedObjectContext{
        return container.viewContext
    }
}
