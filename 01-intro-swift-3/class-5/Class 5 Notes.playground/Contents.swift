//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// ERRORS

enum ResponseError : Error {
    case NotFound
    case ServerError
}


enum CarError : Error {
    case EngineTrouble
    case NoFuel
    case BlownTire
}

class Vehicle {
    var gasMeter = 0 // Default value means that you don't need an init
    
    func go() throws -> Int {
        if gasMeter > 0 {
            gasMeter -= 10
            print("We are going!")
            return gasMeter
        } else {
            throw CarError.NoFuel
        }
    }
    
}

var car = Vehicle()
car.gasMeter = 100

do { // When calling an error-throwing function, you must imbed it in a do block.
    try car.go()
} catch { // "do catch" is almost equivalent to "if else." 
    print(error) // catch has implicit "let error" associated with it under the hood.
}

do {
    var remainingGas = try car.go()
    
    if remainingGas > 10 {
        print("You have enough to go a bit further!")
    } else {
        print("We may not make it!")
    }
}

var remainingGas = try? car.go()



// GENERICS

func addTwoNumbers(numOne: Int, numTwo: Int) -> Int {
    return numOne + numTwo
}

func addTwoFloats(numOne: Float, numTwo: Float) -> Float {
    return numOne + numTwo
}

func addTwoStrings(stringOne: String, stringTwo: String) -> String {
    return stringOne + stringTwo
}

addTwoNumbers(numOne: 10, numTwo: 10)
addTwoFloats(numOne: 20.0, numTwo: 0.5)
addTwoStrings(stringOne: "Mike", stringTwo: "Miksch")

// Same functionality, but three different functions to handle different data types.

//func addTwoThings<T: IntegerArithmetic>(one: T, two: T) -> T{ // T is just a placeholder for a type. Uppercase letter is practice
//    return one + two // IntegerArithmetic contrains type to those that can be added together.
//}

//addTwoThings(one: 10, two: 10)
//addTwoThings(one: 20.0, two: 0.5)
//addTwoThings(one: "Mike", two: "Miksch")

class GenericStore<T> {
    private var objects = [T]()
    
    func add(object: T) {
        self.objects.append(object)
    }
    
    func allObjects() -> [T] {
        return objects
    }
}

var stringStore = GenericStore<String>() // Now we have an instance of GenericStore that takes strings

// stringStore.objects // Can't be accessed since it's defined as private.

stringStore.add(object: "Hello")
stringStore.add(object: "How are you?")
stringStore.allObjects() // This function can be used to get the private array displayed

var integerStore = GenericStore<Int>()

integerStore.add(object: 5)
integerStore.add(object: 100)
integerStore.allObjects()


func checkPalindrome(array:[String]) -> Bool {
    var result = false
    for each in array {
        if each == String(each.characters.reversed()) {
            result = true
        }
    }
    return result
}

var containsPalindrome = ["racecar", "tacocat"]
var doesNotContainPalindrome = ["Zebra", "lion"]
var mixedPalindrome = ["bob", "Not bob"]

checkPalindrome(array: containsPalindrome)
checkPalindrome(array: doesNotContainPalindrome)
checkPalindrome(array: mixedPalindrome)

//func stretchGoalAddition(one: Int, two: Int) -> Int {
//    var addArray = [one, two]
//    var resultString : String = ""
//    for each in addArray {
//        var dotString = String(repeating: "*", count: each)
//        resultString.append(dotString)
//    }
//    return resultString.characters.count
//}
//
//stretchGoalAddition(one: 5, two: 10)


func stretchGoalAddition(one: Int, two: Int) -> Int {
    var addArray = [one, two]
    var resultString : String = ""
    if one > 0 && two > 0 {
        for each in addArray {
            var dotString = String(repeating: "*", count: each)
            resultString.append(dotString)
        }
    }
    return resultString.characters.count
}

stretchGoalAddition(one: 5, two: 10)