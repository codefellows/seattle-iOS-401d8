//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// LAB 2 CODE REVIEW

let places = ["Code Fellows", "New York", "Paris", "Seattle", "Greece"]

let searchedPlace = "Fullerton"

if places.contains(searchedPlace) {
    print("places contains \(searchedPlace)!")
}  else {
    print("places does NOT contain \(searchedPlace)!")
}

let someDictionary = ["firstName" : "Adam", "lastName" : "Walraff", "employer" : "Code Fellows"]

func printName(_ name: String, andAge age: Int? = nil) {
    var resultingString = "This is \(name)"
    if let age = age {
        resultingString += " and he is \(age) years old."
    }
    
    print(resultingString)
}

printName("Adam", andAge: 30)

// By removing the name for need to declare "name", the original function name of "printNameAndAge" is no longer an ideal name for this function since it removes the context. So we name the age input andAge.


////////////////


// STRUCTURES

// Structures are immutable; they are copied on assignment (versus Classes, which point back to the same instance)

struct Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) { // This is essentially rewriting the above initializer. Required for classes
        self.name = name
        self.age = age
    }
    func ageInDogYears() -> Int {
        return age * 7
    }
}

extension Person {
    init() {
        self.name = ""
        self.age = 0
    }
    init?(name: Any, age: Int = 0){ // Failable initializer. Good for handling entries as the wrong type
        self.age = age
        if let name = name as? String { //"If value entered for name is a string, set it as name"
            self.name = name
        } else {
            return nil
        }
    }
}

// New initializations must include all members included in the structure that are not defined as optionals

var anotherPerson = Person(name: "Mike", age: 37)
var newPerson = Person(name: "Mike", age: 37)
let personsName = newPerson.name
newPerson.name = "Mike Miksch"
newPerson.name
anotherPerson.name
anotherPerson.age

var otherMike = anotherPerson // This creates a new copy of anotherPerson and assigns it the variable otherMike

anotherPerson.age = 40
otherMike.age
otherMike.name = "Magic Mike"
anotherPerson.name

let prisoner = Person(name: 1000)
prisoner

otherMike.age
otherMike.name
let dogYears = otherMike.ageInDogYears()


/////////////


// CLASSES

class PersonClass {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

extension PersonClass {
    func ageInDogYears() -> Int {
        return age * 7
    }
}

// Classes are mutable references. Stores a pointer to a location in memory that stores the value (reference symantics)

let person = PersonClass(name: "Mike", age: 37)
person.ageInDogYears()

let student = person

person.name = "Mike Miksch"

student.name


/////////////


// ADVANCED CLASSES

class Student : PersonClass {
    var studentID : String
    
    init(name: String, age: Int, studentID: String) {
        self.studentID = studentID
        super.init(name: name, age: age) // super.init comes last of any init in a subclass.
    }
    
//    override func ageInDogYears() -> Int { Not sure why this isn't working.
//        return age * 100
//    }
}

let newStudent = Student(name: "Mike", age: 37, studentID: "Decepticon")
newStudent.ageInDogYears()


/////////////


// PROTOCOLS

protocol Car {
    var weight: Int { get set }
    func stop()
}

protocol WeightCalculate {
    associatedtype WeightType
    func calculateWeight() -> WeightType
}

class HeavyThing: WeightCalculate {
    typealias WeightType = Int
    func calculateWeight() -> Int {
        return 100
    }
}

protocol TeamRecord{
    var wins: Int {set get}
}

protocol PlayoffEligible{
    var minimumWinsForPlayoffs: Int { get }
}

extension TeamRecord where Self: PlayoffEligible{
    func isPlayoffEligible() -> Bool
    {
        return self.wins > minimumWinsForPlayoffs
    }
}

protocol Identity {
    var id: String { get set }
    
    func someOptionalMethod()
    
    func someRequiredMethod()
}

extension Identity {
    func someOptionalMethod() {
        print("Optional")
    }
}

class NewCar : Identity {
    var id: String
    init() {
        self.id = UUID().uuidString
    }
    
    func someRequiredMethod() {
        print("Required")
    }
}

let myCar = NewCar()
myCar.id
myCar.someRequiredMethod()
myCar.someOptionalMethod()
