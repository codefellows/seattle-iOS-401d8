//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Write a function that has a Int parameter with a default value of 0.

func nameAndAge(name: String, age: Int = 0) -> String {
    return "\(name) is at least \(age) years old"
}

nameAndAge(name: "Mike", age: 37)
nameAndAge(name: "Mike")

// Write a function that takes in a string, checks if it can be converted to a Float, and returns a optional Float


// Write a function that takes in a tuple (Int, Int) and returns the sum of the 2 values as Int

let myTuple = (numOne: 10, numTwo: 25)

func sumTuple(_ input: (Int, Int)) -> Int {
    return input.0 + input.1
}

sumTuple(myTuple)

// Write a function that take in a String, and returns a message: “String contains n characters”

func countCharacters(_ inputString: String) -> String {
    let characterCount = inputString.characters.count
    return "String contains \(characterCount) characters."
}

countCharacters("Shitsnacks on crackers")

// Write a function that takes in a string and reverses it.

func stringReversal(_ inputString: String) -> String {
   return String(inputString.characters.reversed())
}

stringReversal("Shitsnacks on crackers")

