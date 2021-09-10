
import Cocoa

extension Double{
    func round(to places: Int) -> Double{
        let percisionNumber = pow(10, Double(places))
        var n = self
        n = percisionNumber * n
        n.round()
        n = n / percisionNumber
        return n;
    }
}

let box = [1,2,3,4,5,6,7]

var myDouble = 3.14159

myDouble.round(to: 1)

print(box[0])

struct Yogi {
    let date: DateFormatter
    let name: String
}
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "h:mm a ⚡️ MM/d/yy"



let yoYogi = Yogi(date:dateFormatter, name: "Brandon")
let wtf = Date()
//
//print(dateFormatter.string(from: wtf))
//print(yoYogi.date)
//print(dateFormatter)
//print(wtf)

let array: [Int] = [1,2,3,4,5,6]
var new : [Int] = []
for nums in array{
    if nums % 2 == 0{
        new.append(nums)
    }
}
print(new)

let even = array.filter { $0 % 2 == 0}
print(even)



let counts : [String:Int] = ["Yo": 1,"This is how you": 2]

for (key, value) in counts {
    print ("\(key) and \(value)")
}


array.filter{$0 == element}.count
