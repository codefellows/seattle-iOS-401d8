//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func addWithoutAdd(one: Int, two: Int) -> String {
    var positives = [String]()
    var negatives = [String]()
    var total = ""
    func positiveOrNegative(_ input: Int) {
        var tempString = String(repeating: "*", count: abs(input))
        if input >= 0 {
            for each in tempString.characters {
                positives.append("*")
            }
        } else {
            for each in tempString.characters {
                negatives.append("*")
            }
        }
    }
    positiveOrNegative(one)
    positiveOrNegative(two)
    if positives.count > negatives.count {
        for each in negatives {
            positives.popLast()
        }
        total.append(String(positives.count))
    } else if negatives.count > positives.count {
        for each in positives {
            negatives.popLast()      }
        total.append("-\(String(negatives.count))")
    } else {
        total = "0"
    }
    return total
}

addWithoutAdd(one: -20, two: -20)

func compressString(_ input: String) -> String {
    let groups = input.characters.reduce([(Character, Int)]()) { (groups, char) -> [(Character, Int)] in
        var _groups = groups
        let count = _groups.last?.0 == char ? groups.last!.1 : 0
        if count > 0 {_groups.removeLast()}
        _groups.append((char, count + 1))
        return _groups
    }
    return groups.map{group in group.1 == 1 ? "\(group.0)" : "\(group.0)\(group.1)"}.reduce("", +)
}


compressString("aaabbbbcccccdddddd")


addWithoutAdd(one: 34, two: 56)



































