//
//  User.h
//  MRC_Demo
//
//  Created by Adam Wallraff on 4/20/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject{
    NSString *_name;
}

-(void)setName:(NSString *)name;
-(NSString *)name;


@end
