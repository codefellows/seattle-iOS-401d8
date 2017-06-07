//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Write a function that takes in an array of planet names as Strings, checks if array contains “Earth". If it does not, add it. Otherwise, do nothing.

var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
var planetsMissingEarth = ["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

func addEarthIfMissing(_ input: [String]) -> [String] {
    if !input.contains("Earth") {
        var appendedList = input
        appendedList.append("Earth")
        return appendedList
    } else {
        return input
    }
}

addEarthIfMissing(planets)
addEarthIfMissing(planetsMissingEarth)


//Using sort and reduce, create string from the above array sorted alphabetically. Example Output: [“Venus", “Earth"] would produce "Earth Venus"

let sortedPlanets = planets.sorted()
let stringifiedPlanets = sortedPlanets.reduce("", { $0 + " " + $1 })
stringifiedPlanets

//Declare a dictionary of String keys, and String values. Declare a function that takes in a String and searches dictionary for it as a value.

let me = ["firstName" : "Mike",
          "lastName" : "Miksch",
          "age" : "37"]

func searchForValue(_ myDictionary: [String : String], value: String) -> Bool {
    return myDictionary.values.contains(value)
}

searchForValue(me, value: "Mike")
searchForValue(me, value: "Beach balls")


//Write a function that counts repeating words in an array of strings, and prints out the count of each

let mealsThisWeek = ["McMuffin", "Salad", "Burrito", "McMuffin", "Salad", "Protein Bar", "Eggs"]

func foodCount() {
    var totals : [String:Int] = [:]
    for item in mealsThisWeek {
        totals[item] = (totals[item] ?? 0) + 1
    }
    for (key, number) in totals {
        print(number, key)
    }
}

foodCount()

//Write a function that takes in a String, checks if it can be converted to a Float, and returns a optional Float

func checkIfFloat(_ input: String) -> Float? {
    if let floatedString = Float(input) {
        return floatedString
    } else {
        return nil
    }
}


checkIfFloat("5")
checkIfFloat("Five")

