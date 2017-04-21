//
//  ViewController.m
//  MRC_Demo
//
//  Created by Adam Wallraff on 4/20/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    User *test = [[User alloc] init];
    test.name = @"Adam";
    
    NSLog(test.name);
 

}

-(void)test {
    
}
                  

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
