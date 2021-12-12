---
title: CoreData
created: '2021-12-10T17:34:24.866Z'
modified: '2021-12-10T17:58:30.052Z'
---

# CoreData

### Pathing
It is imparative to know exactly where the data is being sent to. The following path provided by the code below, allows you to access the SQL files that are instantiated in the AppDelegate.
```swift
let dataFilePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
```
This is not the exact location, for this takes you to the Documents directory. From this path you would want to instead, access Library/Application Support/ and there you will have the .sqlite extension denoted that this is the instantiated SQLite Database. Once you click here, I should prompt you to an SQLite application.

## CRUD methods
### <mark>Creating (Saving)</mark>
Once we created our project, it is important that the box for CoreData is checked so the necessary function get added into the AppDelegate. saveContext is one of the key funcions that is needed. To save data into the database, we have to get this reference of context and initialize it in whatever file that we need to save data in. Here is an example: 

```swift
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    // context here is being set as an NSManagedObject. The same as the subclass that is for the entity, Tasks. **Tasks+CoreDataClass.swift will show this to be true.**
    let tasks = Tasks(context: context)
    // now tasks is accessible and treated as a class.
    tasks.attribute = "Brodie"
    // this line accesses the member "attribute" and stores a value to the entity
    saveItems()

         
    func saveItems(){
        do {
            try context.save()
            // the line above, uses the context defined and saves it to CoreData
            print("Items saved")
        } catch {
            print("Error saving context \(error)")
        }
    }
```

### SQL-Lite
To use SQL-Lite and get a visual of the database, I downloaded SQLiteFlow from the App Store
