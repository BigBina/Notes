---
title: TableView
created: '2021-09-30T17:02:15.255Z'
modified: '2021-09-30T20:54:44.348Z'
---

# TableView

## Table View Datasource Methods
```swift
let array : [Int] = [1,2,3,4,5,6,7,8,9]
```

Once we create a TableViewController, we must include the following methods to populate the table with cells. For the example above, I created an array. I want to take this array and populate the table with the contents of the array. Meaning, that each vertical cell would contain an item in order from index 0 -> n (top to bottom). There are methods that we need to make this happen.

This method returns the number of rows that each section should contain. Each table is defaulted at 1 section. 
```swift
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
``` 

This method sets the text of the cell to values from the array.
```swift
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameOfCellIdentifier", for: indexPath) 
        cell.textLabel?.text = array[indexPath.row]

        return cell
    }
```


## TableView Delegate Methods
**Note:** Each of these Protocols are under the class, UITableViewController. So we don't need to call each protocol if we create a TableView with this sub-clss.

All of the methods will be in xCode's intellisense feature as soon as you type 'tableview'. An autocomplete window will appear with a description of the curent method that is selected. The Delegate methods help you give the table view some attributes, for example:

``` swift
extension ChatViewController: UITableViewDelegate{
    // function for selecting a row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(array[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
        //This deselects the cell when you select it. It stays selected by default.
    }
}
```

#### Accessory for the Table Cell
This selects is also belongs in the method from the previous code snippet. This allows the cell to have an accessoryType. It gets the cell at every index path and applies the checkmark accessory to the cells' attribute.
```swift 
tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
```
