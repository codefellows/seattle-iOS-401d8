//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)

//Write a function that has a Int parameter with a default value of 0.

func zeroInt(number: Int = 0) -> Int {
    return number
}

zeroInt()

//Write a function that takes in a string, checks if it can be converted to a Float, and returns a optional Float

func checkFloat(_ stringToCheck: String) -> Float? {
    if (Float(stringToCheck) != nil) {
        return Float(stringToCheck)
    }
    else { return 0 }
}

checkFloat("3.45")
checkFloat("fish")


//Write a function that takes in a tuple (Int, Int) and returns the sum of the 2 values as Int

func addATuple(_ numOne: Int, _ numTwo: Int) -> Int {
    return numOne + numTwo
}

addATuple(3,4)

//Write a function that take in a String, and returns a message: “String contains n characters”

func countAString(_ inputString: String) -> String {
    return "String containts \(inputString.characters.count) characters"
}

countAString("This is a string!")

//Write a function that takes in a string and reverses it.

func reverseAString(_ inputString: String) -> String {
    var result = ""
    
    for character in inputString.characters {
        result = String(character) + result
    }
    
    return result
}

reverseAString("Reverse Me!")






