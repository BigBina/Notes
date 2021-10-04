---
title: Local-Data-Persistance
created: '2021-09-30T16:57:58.267Z'
modified: '2021-10-01T15:54:29.103Z'
---

# Local-Data-Persistance
### UserDefaults
An interface to the user’s defaults database, where you store key-value pairs persistently across launches of your app.
```swift
let defaults = UserDefaults()

defaults.set(anyDataType, forKey: "String")

```

The key-value pair is then stored in plist file. This solves the issue of terminating an application. Saving this data in the defaults type is meant for small data types. Like user settings being saved. Ex: On tidal, I have my cross-fade set to 3s. Everytime i terminate the app, it stays at 3s.
If the value for an default is a string, int, float then you can set and retrieve like so:
```swift
let defaults = UserDefaults.standard
//setting
defaults.set(3.14, forKey: "volume")
//retrieving
let pi = defaults.float(forKey: "volume")


defaults.set(Date(), forKey: "Date")
let today = defaults.object(forKey: "Date")


let array : [Int] = [1,2,3,4,5,6,7,8,9]
defaults.set(array, forKey: "array")
let arrayD = defaults.array(forKey: "array") as! [Int]
//Here we downcast the array as an integer to remove the default optional array when using this function
```

##### User Defaults is **Not** a database!
Storing large bits of data in UserDefaults will cost in speed and efficiency in your app.

### [Singleton](https://stackoverflow.com/questions/137975/what-are-drawbacks-or-disadvantages-of-singleton-pattern)




