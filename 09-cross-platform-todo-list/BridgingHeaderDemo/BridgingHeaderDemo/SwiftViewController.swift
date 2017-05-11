//
//  SwiftViewController.swift
//  BridgingHeaderDemo
//
//  Created by Adam Wallraff on 5/10/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

import UIKit

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let newEmployee = Employee(employeeNumber: 1234)
        
        newEmployee.name = "Adam"
        newEmployee.age = NSNumber(integerLiteral: 30)
        
        newEmployee.doWork()
        newEmployee.sayHello()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
