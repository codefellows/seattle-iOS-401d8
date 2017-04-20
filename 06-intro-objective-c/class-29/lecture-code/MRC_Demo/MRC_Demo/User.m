//
//  User.m
//  MRC_Demo
//
//  Created by Adam Wallraff on 4/20/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

#import "User.h"

@implementation User


-(void)setName:(NSString *)name{
    
    if(_name != name){
        
        [name retain];
        [_name release];
        
        _name = name;
        
    }
}

-(NSString *)name{
    return _name;
}

-(NSString *)description{
    NSString *description = [[[NSString alloc]initWithFormat:@"%@", self.name]autorelease];
    
    return description;
    
}


@end



















