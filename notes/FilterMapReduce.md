---
title: FilterMapReduce
created: '2021-12-13T16:52:42.435Z'
modified: '2021-12-13T18:34:20.207Z'
---

# Filter_Map_Reduce
These functions iterate over a collection, make changes, and create a new collection with the provided changes. A useful note to read before diving into this topic and/or a reference: [$0](@note/dollarSign0)


## <mark>Filter</mark>

Here, I am setting an array of `iPhones` using the filter function on any type that is equal to `"iPhone"`. $0 is referencing the iPhone variable to access the type of any device that has the type specified in the comparison.
```swift
struct Devices {
  var type : String
  var price : Float
  var color : String
}

var iPhone = Device(type: "iPhone", price: 999.00, color: "Blue")
...

let myDevices = [iPhone, appleWatch, appleTV]

let iPhones = myDevices.filter({ return $0.type == "iPhone"})
```
-----
## <mark>Map</mark>

Map iterates through the array and applies a transform or operation to any object in the array.

```swift
let inflationPrice : [Float] = myDevices.map({return $0.price * 1.2})

```
-----
## <mark>Reduce</mark>
Reduce combines all values into one.

The following `totalPrice` 
```swift 
let totalPrice : Float = inflationPrice.reduce(0.0, +)
```


