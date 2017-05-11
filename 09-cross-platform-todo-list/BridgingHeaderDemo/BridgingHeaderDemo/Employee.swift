//
//  Employee.swift
//  BridgingHeaderDemo
//
//  Created by Adam Wallraff on 5/10/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

import UIKit

class Employee: Person {

    var employeeNumber : Int
    
    init(employeeNumber: Int) {
        self.employeeNumber = employeeNumber
    }
    
    func doWork() {
        print("Work work work work work....")
    }
    
}
