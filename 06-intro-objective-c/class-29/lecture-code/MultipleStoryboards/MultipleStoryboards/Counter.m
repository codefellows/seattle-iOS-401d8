//
//  Counter.m
//  MultipleStoryboards
//
//  Created by Adam Wallraff on 4/20/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

#import "Counter.h"

@implementation Counter

-(void)incrementCounter{
    
    [self willChangeValueForKey:@"count"];
    
    self.count++;
    
    [self didChangeValueForKey:@"count"];
}


+(BOOL)automaticallyNotifiesObserversOfCount{
    return NO;
}

@end





