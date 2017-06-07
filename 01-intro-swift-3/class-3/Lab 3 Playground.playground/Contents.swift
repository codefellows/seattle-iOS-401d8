//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Declare Identity protocol with id String
protocol Identity {
    var id: String { get set }
}



// Declare a ToDo class that has a text member of type String, and conforms to Identity protocol

class ToDo : Identity {
    var id: String
    var text: String
    init(id: String, text: String) {
        self.id = id
        self.text = text
    }
}


var test = ToDo(id: "Label", text: "Description")


// Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects

protocol ObjectStore {
    var contents : [ToDo] { get set }
    func add(label: String, description: String)
    func remove(label: String)
    func objectAtIndex(index: Int) -> String
    func count() -> Int
    func allObjects() -> String
}


// Create Store class that will conform to ObjectStore protocol and implement required methods

class Store : ObjectStore {
    var contents = [ToDo]()
    init() {}
    func add(label: String, description: String) {
        let newItem = ToDo(id: label, text: description)
        contents.append(newItem)
    }
    func remove(label: String) {
        for item in contents {
            if item.id == label {
                contents = contents.filter() { $0 !== item }
            }
        }
        
    }
    func objectAtIndex(index: Int) -> String {
        return contents[index].id
    }
    func count() -> Int {
        return contents.count
    }
    func allObjects() -> String {
        var listAll = ""
        for each in contents {
            listAll += "\(each.id): \(each.text). "
        }
        return listAll
    }
}


// Demonstrate adding / removing of ToDo items.

var toDoList = Store()

toDoList.allObjects()

toDoList.add(label: "Walk Dog", description: "Dog won't walk itself")
toDoList.add(label: "Trash", description: "Trash pickup every Friday morning")
toDoList.add(label: "Laundry", description: "Your mom doesn't live here, wash your own clothes")
toDoList.add(label: "Dishes", description: "Your mom won't wash the dishes either")
toDoList.add(label: "Vaccum floors", description: "It kind of sucks")

toDoList.count()

toDoList.allObjects()

toDoList.objectAtIndex(index: 0)

toDoList.remove(label: "Walk Dog")

toDoList.objectAtIndex(index: 0)


