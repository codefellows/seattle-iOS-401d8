//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// CLOSURES

var closure: (Int, Int) -> Int

closure = {(a, b) -> Int in
    return a * b
}
// Closure expression is when it's assigned to some variable

var counter = 0

let increment = {
    counter += 1
}

increment()
// This closure doesn't take parameters and doesn't return any values, so you can ommit the "in" keyword

func addNumberFunction() -> () -> Int {
//Declares that it returns a function that takes no parameters and also returns a value
    var newCounter = 0
    
//    func newIncrement() -> Int {
//        newCounter += 1
//        // Can't do += on a line where something is being returned
//        return newCounter
//    }
    
    let newIncrement = { () -> Int in // same as "newIncrement : () -> Int = { () -> Int in"
        newCounter += 1
        return newCounter
    }
    // This is as a closure format rather than function syntax
    
    let shortHandClosure = { () -> () in
    //Depends on type inference to work.
    }
    
    let shorterHandClosure = {
        
    }
    
    let longHandClosure : () -> () = { () -> () in
    //Objective C has to be explicit like this.
    // "longHandClosure is a function that returns a function. This is the function"
    }
    
    return newIncrement
}
//newIncrement is a closure as well as a named function. It's "closing over" the scope it inheirits outside of itself

var addThingsFunction = addNumberFunction()
addThingsFunction()
addThingsFunction()
// The first function call adds a 1 to newCounter, then newCounter falls out of memory when the function is complete.
// The second function call adds another 1 to newCounter, because newCounter is captured by the closure and persists after the function ends.

var otherCounter = addNumberFunction()
otherCounter()
// Creates a new instance of the same variable, does not add to the add things function despite referencing the same addNumberFunction

UIView.animate(withDuration: 1.0, animations: {
    
})

// Is the same as

UIView.animate(withDuration: 1.0) {
    
}

// Is the same as

func animateThis() {
    var someValueToAnimate = 0.567
//    someView.layer.cornerRadius = 25.0
}

UIView.animate(withDuration: 1.0, animations: animateThis)

//Any time you have a function who's last argument is a function is called a trailing closure

















// OPTIONALS

var number : Int?
number = 10
number = 0
//number = nil // only possible with Int?, not Int

// var forceUnwrapped = number! will crash your program. Cannot unwrap a nil value.

print(number)
// if number is not nil, prints "Optional(0)"

if let unwrapped = number {
    print(unwrapped)
}
// Removes the Optional wrapping within the scope of the if statement

let name : String?

name = "Mike"

// Do some things...
print(name)

guard let name = name else { fatalError() }
//Every guard needs to be provided an else statement to handle escape

print(name)

var optional: Int? = 10
var result: Int = optional ?? 0
//Nil coalescing. If optional is nil, result defaults to 0


var optionalNumber : Int?  = nil
print(optionalNumber)

var nonOptionalNumber = optionalNumber ?? 0
print(nonOptionalNumber)










// COLLECTIONS

let stringsArray = [String]()
// Initializes an empty array that will contain strings. () like calling a function.

let planetArray = ["Mars", "Jupiter"]
// Array literal where we hard code in what we already know we want it to contain.

var intArray = [Int](repeating: 0, count: 5)
// If you know how many you want but not the number, you can set the number of items and a default value.

//Array methods to access values

stringsArray.isEmpty //checks if an array is empty
stringsArray.count //returns the number of items
stringsArray.first //computed property that returns the first value
stringsArray.last //computed property that returns the last value

intArray.min() //Returns the lowest value, but not index number
intArray.max() //Returns the highest value. Both work on strings, strangely.

planetArray[0] //subscript syntax to access a specific item in the array. Use a range to fetch mroe than a single value.

planetArray.contains("Earth") // Checks if a value is contained in an array

var numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.isEmpty
!numbers.isEmpty
//"numbers is not empty

numbers.count
numbers.first
numbers.last

let someIndex = 5

let otherNumbers = numbers[someIndex...7]

numbers.append(100)
numbers.insert(5, at: 9)
numbers.remove(at: 8)
//.insert and .remove throw errors if you specify index numbers out of the bounds of the array.

for number in numbers {
    print(number)
}

for (index, number) in numbers.enumerated() {
    print(index, number)
}

let sortedNumbers = numbers.sorted()
// Returns a sorted copy

numbers.sort()
// Actually transmutes the array and puts them in order

let reducedNumbers = numbers.reduce(0, { $0 + $1 })
reducedNumbers
// the 0 is a starting value, not any index number.
// $0 is the index value to start the method on (in this case, index 0)
// let reducedNumbers = numbers.reduce(0, { (first, second) in 
//    first + second)
// })

var names = ["adam", "russell", "lynch", "felix"]
let reducedNames = names.reduce("Awesome Sports Players: ", { (first, second) in
    first + " " + second
})

//Also works: let reducedNames = names.reduce("Awesome Sports Players: ", { (first, second) in
//   "\(first) \(second)"
// })

let moneyReducedNames = names.reduce("Awesome Sports Players: ", { $0 + " " + $1 })

reducedNames

let mappedNumbers = numbers.map( { $0 * 2 } )
let longerMappedNumbers = numbers.map( { (number) in
    number * 2
})
// Useful for performing the same math on an entire array.

numbers
mappedNumbers

let adam = names.filter({ (name) in
    name == "adam" || name == "lynch"
})
//Filter creates a new array of the filtered value
adam

let nameFilter = names.filter({$0 == "adam" || $0 == "lynch" })

let mappedNames = names.map({"Hi, \($0)" })
mappedNames

let dictionaryOne = [String : String]()
var dictionaryTwo = ["name" : "Mars"]
dictionaryTwo = [:] //Empties out dictionaryTwo

var me = ["firstName" : "Mike",
          "lastName" : "Miksch",
          "age" : "37"]

me["favoriteLanguage"] = "English"
// "me.favoriteLanguage" doesn't work, unlike JS. This will create the key if it doesn't exist, change the value if it does.
me

me.removeValue(forKey: "favoriteLanguage")
me.updateValue("27", forKey: "age")

me

for (key, value) in me {
    print("Key: \(key), Value: \(value)")
}

let strawberries = "Strawberries taste like strawberries"
strawberries.hash
let strawberriesTwo = "Strawberries taste like strawberries"
strawberriesTwo.hash
// Different constants/variable with the same content will produce the same hash number

let setA : Set = [1,3,5]
let setB : Set = [3,7,9]
let setC : Set = [0, 2, 8, -10, 7, 4]

let unionSet = setA.union(setB)
// Combines your sets, but unordered.

let intersectingSet = setA.intersection(setB)
// Lists values in common between sets.

let subtractSet = setA.subtracting(setB)
// Removes any values in the first set in common with the second set invoked

let symmetricDifferenceSet = setA.symmetricDifference(setB)
// Removes any values that the two sets have in common.

let chainedSet = setC.subtracting(setA).union(setB)
// Subtract set A values from set C and combine result with set B.
