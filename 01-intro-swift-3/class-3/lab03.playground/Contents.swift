//: Playground - noun: a place where people can play

import UIKit


//Declare Identity protocol with id String

protocol Identity {
    var id: String {get set}
}

//Declare a ToDo class that has a text member of type String, and conforms to Identity protocol

class ToDo: Identity {
    
    var id: String
    
    init(id: String) {
        self.id = id
    }
}

//Define ObjectStore protocol with these functions:add(object:), remove(object:), objectAtIndex(index:), count, allObjects.
//ObjectStore will need to have an array of ToDo objects to have access to.

protocol ObjectStore {
    var toDos: [ToDo] {
}



//Create a Store class that will conform to ObjectStore protocol and implement required methods


//Demonstrate adding / removing of ToDo items.
