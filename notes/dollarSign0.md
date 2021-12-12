---
title: dollarSign0
created: '2021-12-11T18:19:59.581Z'
modified: '2021-12-12T00:44:19.064Z'
---

# dollarSign0

#### What is $0?
0$ represent items of a collection when performing actions on them.
Example for printing numbers within an array:

Usually to print numbers for an array we use a for in loop to access each member and print the value like so,
```swift
let numArray = [1,2,3,4,5]

for num in numArray {
  print(num)
}
```

With $0, there is an alternative way of printing:
```swift
numArray.forEach {print($0)}
```
This [medium article](https://medium.com/codex/swift-what-are-0s-and-1-s-and-how-to-use-them-145f4920bc49) explains the funtion in full detail.
