//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Declare an Enum. Your enum should have at least 5 cases and should use Associated Values for 3 of the 5 cases using the following types:
//String
//(Int, Int)
//()->()



enum PossibleAttackOutcomes {
    case Hit(Int, Int)
    case Miss(Int)
    case VoidFunction(() -> ())
    case SpellFailure(String)
    case CriticalHit(Int, Int)
}

func hiThere() {
    print("Hi there!")
}

//Demonstrate, using a switch statement, accessing each of the associated types.

func attackOutcomes(respondTo: PossibleAttackOutcomes) {
    switch respondTo {
    case .Hit(let attackRoll, let damage):
        print("You roll a(n) \(attackRoll) and hit your enemy for \(damage) points of damage!")
    case .Miss(let attackRoll):
        print("\(attackRoll) fails to meet the enemy's AC")
    case .VoidFunction(let function):
        function()
    case .SpellFailure(let spellName):
        print("\(spellName) failed!")
    case .CriticalHit(let attackRoll, let damage):
        print("You roll a(n) \(attackRoll) and hit your enemy for \(damage * 2) points of damage!")
    }
}

let hitExample = PossibleAttackOutcomes.Hit(15, 18)
attackOutcomes(respondTo: hitExample)

let missExample = PossibleAttackOutcomes.Miss(1)
attackOutcomes(respondTo: missExample)

let voidFunctionExample = PossibleAttackOutcomes.VoidFunction(hiThere)
attackOutcomes(respondTo: voidFunctionExample)

let spellFailureExample = PossibleAttackOutcomes.SpellFailure("Fireball")
attackOutcomes(respondTo: spellFailureExample)

let criticalHitExample = PossibleAttackOutcomes.CriticalHit(20, 10)
attackOutcomes(respondTo: criticalHitExample)


//Declare a Person class with 3 member properties. Declare a Student subclass that inherits from Person.
//Both Your Student and Person class should have at least 2 meaningful Type and 2 Instance Methods that would apply to each type. Be creative.
//In one of these 2 classes(Student or Person), demonstrate a computed property and implement a property observer.
//Your Student class should have a student ID property that is a unique identifier for each student

class Person {
    var name: String
    var age: Int
    var city : String {
        didSet {
            print("\(name) now lives in \(city)")
        }
        willSet {
            print("\(name) has moved!")
        }
    }
    init(name: String, age: Int, city: String) {
        self.name = name
        self.age = age
        self.city = city
    }
    
    func howManyDaysOld() {
        let ageInDays = age * 365
        print(ageInDays)
    }
    
    class func percentFemale(males: Float, females: Float) {
        let percentage = Float(females / (males + females) * 100)
        print("\(percentage)% of the sample population are female")
    }
}

class Student : Person {
    var id: String
    var bio: String {return "\(name) lives in \(city)"}
    
    override init(name: String, age: Int, city: String) {
        self.id = UUID().uuidString
        super.init(name: name, age: age, city: city)
    }
    
    func graduatedHowLongAgo() {
        let yearsSinceHighSchool = age - 18
        if yearsSinceHighSchool > 1 {
            print("\(name) graduated high school somewhere around \(yearsSinceHighSchool) years ago! Probably...")
        } else {
            print("I don't think \(name) has graduated highschool yet...")
        }
    }
    
    class func studentCostPerCapita(students: Float, budget: Float) {
        print("The current budget allocates $\(budget/students) per student.")
    }
}

//Create a Classroom class that is a true singleton and has an array of Students.
//Add accessor methods(add(Student:), remove(Student:), studentWith(id:)-> Student, allStudentNames()->[String], studentCount()->Int) to Classroom to access student data from the array.

class Classroom {
    static let shared = Classroom()
    var students = [Student]()
    private init() {}
    
    func add(student: Student) {
        students.append(student)
    }
    func remove(student: Student) {
        students = students.filter() { $0 !== student}
    }
    func studentWith(id: String) -> Student? {
        var match: Student?
        for each in students {
            if each.id == id {
                match = each
                break
            } else {
                match = nil
            }
        }
        return match
    }
    func allStudentNames() -> [String] {
        var studentNames = [String]()
        for each in students {
            studentNames.append(each.name)
        }
        return studentNames
    }
}

let harryPotter = Student(name: "Harry Potter", age: 17, city: "London")
let hermioneGranger = Student(name: "Hermione Granger", age: 17, city: "Edinburgh")
let ronWeasley = Student(name: "Ron Weasley", age: 16, city: "Bum Fuck Nowhere")

let harryID = harryPotter.id

Classroom.shared.add(student: harryPotter)
Classroom.shared.add(student: hermioneGranger)
Classroom.shared.add(student: ronWeasley)

Classroom.shared.allStudentNames()

Classroom.shared.studentWith(id: harryID)

Classroom.shared.remove(student: ronWeasley)

Classroom.shared.allStudentNames()








