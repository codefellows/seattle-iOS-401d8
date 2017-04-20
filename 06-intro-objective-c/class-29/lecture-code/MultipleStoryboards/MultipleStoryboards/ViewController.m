//
//  ViewController.m
//  MultipleStoryboards
//
//  Created by Adam Wallraff on 4/20/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

#import "ViewController.h"
#import "Counter.h"


static void *kvoContext = &kvoContext;

@interface ViewController ()

@property(strong, nonatomic)Counter *counter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.counter = [[Counter alloc] init];
    
    [self setValue:@100 forKeyPath:@"counter.count"];
    
    NSLog(@"%i", (int)self.counter.count);
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self addObserver:self forKeyPath:@"self.counter.count" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:kvoContext];
    
    [self.counter incrementCounter];

    [self.counter incrementCounter];

    [self.counter incrementCounter];

}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [self removeObserver:self forKeyPath:@"self.counter.count"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    if (context == kvoContext) {
        
        NSLog(@"Value for Count Changed: %i", (int)self.counter.count);
        
        
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
    
}


@end


     
     
     
     
     
     
     
     
     
     
     
     






