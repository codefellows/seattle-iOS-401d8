//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// Once a variable is assigned a type, the value can change, but not the type.

print(str)
// Option + Click brings up abridged documentation for every element.

str = "Mike"
// Variables/Constants are lexically (sp?) scoped; they are are accessible only to the code within the same curly braces. Right now these are globally available.
// In production, most values are attached to objects or methods rather than being global.

let example : String
var otherExample : Int
// Creates an empty constant/variable of a specific type.

example = "Now I am assigned a value"
otherExample = 1234
// Now the constant has become an immutable value once it is assigned.
// Best practices are to use constants whenever possible to prevent accidentally reassigning their values

let number = "1234"
let numberInt = Int(number)
// Converting types between constants.

let numberTwo = "1234abcd"
let numberTwoInt = Int(numberTwo)
// Only possible if the entire string can be converted, in this instance. Won't just grab the numbers out front.

let numberFloat = Float(number)
// Converts our integer into a floating decimal point.

var name : String = "Mike"
var otherName = "Bob"
// Inferred typing versus explicit signature.

var myTuple = (name: "Mike", age: 37)
myTuple.name

var myOtherTuple = ("Mike", 37)
myOtherTuple.0
// Tuples have key:value pairings like objects, but are stored differently. If you don't name the key, you must access it by index number (also an option for named)
// "myTuple.something = value" doesn't work, you can't assign new values to an existing tuple

var myTupleSignature : (name: String, age: Int) = (name: "Mike", age: 37)
// The signature of the tuple, a combination of its input and output. Used in cases where Swift cannot infer type. i.e. if age needed to be a float, but you entered an integer.

var badTuple = ("Mike")
// Still technically a tuple, but bad practice. Use tuples to group data into a single data type.

var nameExample = "Michael" + "Smith"
let message = "Hello, \(nameExample)"
let result = "Mars" == "Earth"
// Characters contain a single character, strings are lengths of characters. A character can be added to a string by converting it to a string first
// "String" + String(Character)

let stringfiedResult = "\(result)"
// ^ This is string interpolation; any value in the parenthesis will be rendered as a string.

let age = 30

switch age {
case 0...3:
    print("Toddler")
case 4...12:
    print("Crazy kids")
// "x..y" is inclusive of both numbers in the range.
case 12..<18:
    print("Damned teenagers")
// "x..<y" is not inclusive of y.
case 18, 25, 55:
    print("Crazy years.")
// Picks specific results.
default:
    print("Age is unknown")
}
// Switch statments will throw errors if there's not at least one line of executable code for each case. Switch and If statements are practically interchangable.

let switchName = "Adam"

switch switchName {
case "Adam", "Amanda":
    print("This is Adam or his wife.")
default:
    print("Unknown")
}

if name == "Adam" && age == 30 {
    print("Yup, that's Adam.")
} else if name != "Adam" && age == 30 {
    print("Someone the same age!")
} else if name == "Adam" && age != 30 {
    print("Someone with the same name!")
} else {
    print("Someone else")
}

let planet = "Mars"

let isMatch = planet != "Earth" ? false : true
// Ternary operator. "Planet does not equal earth is false or true?"
// Bool values should be name "is[something]"

let numbers = [1,2,3,4,5]
// Don't name things like numberArray, use plural if it's a collection

for number in numbers {
    print(number)
}

for (index, number) in numbers.enumerated() {
    print(index)
}
// .enumerated() allows us to do a tuple, where the first parameter has to be the index of the collection

func printSomething() {
    print("Something")
}

printSomething()
// This calls the function and fires it.

printSomething
// This refers to the function without actually calling it (i.e. as a variable)

func addTwoNumbers(numOne: Int, numTwo: Int) -> Int {
    return numOne + numTwo
}

let total = addTwoNumbers(numOne: 10, numTwo: 100)

let myFunction = addTwoNumbers

myFunction(10, 10)

func sumNumbers(numbers: Int...) -> Int { // For when you don't know the total number of arguments. Variatic parameter
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

let numberSum = sumNumbers(numbers: 1, 2, 3, 4, 5, 6, 7)


