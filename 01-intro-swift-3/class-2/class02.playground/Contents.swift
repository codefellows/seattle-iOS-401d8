//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let status: (code: Int, description: String) = (404, "Not found.")

let errorDescription = status.description

let answer = (true && 1 != 2) || (4 > 3 && 100 < 1)

//let firstName = "Adam"
//
//if firstName == "Adam" {
//    
//    let lastName = "Wallraff"
//    
//}
//
//let fullName = firstName + " " + lastName

let planets = ["Mercury", "Venus", "Earth"]
let slice = planets[0...1]
print(slice)