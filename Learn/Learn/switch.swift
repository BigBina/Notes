//
//  switch.swift
//  Learn
//
//  Created by Brandon Brown on 9/10/21.
//

import Foundation

var grades: [Int] = [14,98,67,88,86,78,72,93]
func grad(dese grades: [Int]){
    for grade in grades{
        switch grade{
        case 0..<65:
            print("You are failing")
        case 65..<75:
            print("You have a D")
        case 75..<90:
            print("you have an B")
        default:
            print("You have an A")
        }
    }
}

//grad(dese: grades);

enum Result{
    case passing(pass: String)
    case failing(fail: String)
}


