//
//  ViewController.m
//  BridgingHeaderDemo
//
//  Created by Adam Wallraff on 5/10/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

#import "ViewController.h"

#import "BridgingHeaderDemo-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Employee *newEmployee = [[Employee alloc] initWithEmployeeNumber:1234];
    
    newEmployee.name = @"Adam";
    newEmployee.age = @30;
    
    [newEmployee sayHello];
    [newEmployee doWork];
    
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
