//
//  Person.h
//  BridgingHeaderDemo
//
//  Created by Adam Wallraff on 5/10/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSNumber *age;

-(void)sayHello;

@end
