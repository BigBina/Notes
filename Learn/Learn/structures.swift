import Foundation

struct Stuctured {
    //Array - both arrays create an Integer Array
    var arr1 = [1,2,3,4,5]
    let arr2: [Int] = [1,2,3,2,3]
    let emptyArr: [Int] = []
    //Another way to create an array is similar to how we created vectors in C++ ->
    var arr3: Array<Float> = Array()

    //Counts the number of items in an array. similar to size/length. (no constructor())
//    var countOfArr1 = arr1.count
    //Adds items to an array
    //arr1.append(Value)

    //Dictionaries
    /*Init*/ var emptyDictionary: [String: Int] = [:]

    
    //You can also represent the key and value with the exact name!
    func printKeyAndValue(dict: [String : Int]){
        for (key, value) in dict{
            print("This is the key \(key) and this is the value \(value)")
        }
    }

    

    //Sets - discards any duplicates
    let colors = Set(["red", "blue", "red", "yellow"])
    //Results would be (["red", "blue", "yellow"])

    //Tuples - fixed in size; meaning you cant add or removed items
    let name = (first: "Brandon", last: "Brown")
    //Accessing items
    // name.first or name.0 would print "Brandon"

    //Nil-Coalescing Operator - ?? == Optionals
}

var knob = Stuctured()
let counts: [String: Int] = ["Yo": 1,"This is how you": 2]
