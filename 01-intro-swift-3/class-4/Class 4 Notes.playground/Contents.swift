//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//class MyViewController : UIViewController, UITableViewDataSource { // subclass: superclass, protocol
//    
//    override func viewDidLoad() {
//        super.viewDidLoad() // Always call the superclass's version of a function in an override.
//    }
//}

//ENUMS

enum Month {
    case January
    case February
    case March // Capitalize cases as though they were types
}

// enums can only represent one of its cases (state) at a time, but cannot represent nothing.

enum EnumBoolean : Int { // Equivalent to Bool type
    case False
    case True
}

let trueValue = EnumBoolean.False // Uses dot syntax to specify case, but can't have no state
trueValue.rawValue
EnumBoolean.True.rawValue

enum NumberDemonstration : Int {
    case One
    case OneThousand = 1000
    case Three
}

NumberDemonstration.OneThousand.rawValue
NumberDemonstration.One.rawValue

enum HTTPMethod {
    case GET
    case POST(String) // String is the associated value in this case
}

enum Identification {
    case SocialSecurityNumber(Int)
    case Email(String)
    case PhoneNumber(Int, Int, Int)
}

var userID = Identification.Email("MikeMiksch@gmail.com")

func signInUserWithIdentificationType(id: Identification) {
    switch id {
    case Identification.Email(let value): // Declaring a constant that equals Identification and passes it to the print response.
        print("The user id is the Email \(value)")
    case .SocialSecurityNumber: // Since it's already been id'd as Identification, we can just do .case
        print("The user id is a Social Security Number")
    case .PhoneNumber(let area, let prefix, let suffix):
        print("The user id is (\(area)) \(prefix)-\(suffix)")
    }
}

signInUserWithIdentificationType(id: userID)

userID = Identification.PhoneNumber(425, 314, 4486)

signInUserWithIdentificationType(id: userID)


// PROPERTIES

var number = 100

var squared : Int { // Computed property. Holds no value until it's accessed. Equivalent to simple funcs
    return number * number
}


func squareFunction() -> Int {
    return number * number
}

squared
// VS
squareFunction()

struct User {
    var firstName : String
    var lastName : String
    var fullName : String {return "\(firstName) \(lastName)"} // Computed properties must be a var
    var age: Int
    var ageInDogYears : Int { return age * 7 }
}

var newUser = User(firstName: "Mike", lastName: "Miksch", age: 37)

newUser.firstName
newUser.fullName
newUser.ageInDogYears


// SINGLETONS

class Manager {
    static let shared = Manager() //"static" applies to the class itself, not any individual instance
    private init() {}
}

// A True Singleton. Has a static constant called shared and a initialization of itself. init is private


class ToDoStore {
    var todo: [String] = []
    
    static let shared = ToDoStore()
//    private init() {}

}

ToDoStore.shared // This gives access to the singleton instance of ToDoStore
ToDoStore.shared.todo.append("Clean Car")
ToDoStore.shared.todo.append("Wash Dog")

ToDoStore.shared.todo

var newStore = ToDoStore()  // privite init prevents this from working

newStore.todo.append("Get Groceries")
var allToDoItems = ToDoStore.shared.todo

// PROPERTY OBSERVERS

var name: String = "" { // Needs a default value if it's not put inside of an object
    didSet {
        print("Name is set. New name is \(name)")
    }
    willSet {
        print("Name was \(name)") // willSet fires first when the property changes.
    }
}

name = "Mike Miksch"

name = "Magic Mike"

// METHODS

class Calculator {
    func addsTwoThings(numOne: Int, numTwo: Int) -> Int {
        return numOne + numTwo
    }
    class func mulitpliesTwoThings(numOne: Int, numTwo: Int) -> Int {
        return numOne * numTwo
    }
}

let myCalculator = Calculator()

myCalculator.addsTwoThings(numOne: 10, numTwo: 100) // Calls function on the instance
Calculator.mulitpliesTwoThings(numOne: 10, numTwo: 100) // calls function on the class without invoking an instance

struct Person {
    static func walk() {} //Class functions only apply to classes. Static is functionally similar for everything else.
}

// ERROR HANDLING


