//
//  main.swift
//  Learn
//
//  Created by Brandon Brown on 8/18/21.
//

import Foundation




var arrayr = [13,24,34,54,25,16,47]

arrayr.insert(10, at: arrayr.endIndex)
let underFive = 0...5
//underFive.contains(1)
//arrayr.isEmpty


print(arrayr)

for i in arrayr{
    if(i % 2 == 1){
        print(i)//Odd
    }
}

let languages = ["Swift", "C++", "Javascript", "Python"]

for language in languages{
    print(language)
}

let x = Int(readLine()!)
let y = x
print(y!)

//class Person{
//    let name: String
//
//    init(name: String){
//        self.name = name
//        print("\(name) is being initialized")
//    }
//
//    var gadget: Gadget?
//    deinit {
//        print("\(name) is being deinitialized")
//    }
//}
//
//class Gadget{
//    let model: String
//    unowned var owner: Person
//
//    init(model: String, owner: Person){
//        self.model = model;
//        self.owner = owner;
//    }
//}
