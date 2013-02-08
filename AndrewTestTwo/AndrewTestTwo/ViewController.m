//
//  ViewController.m
//  AndrewTestTwo
//
//  Created by Dave Albert on 08/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  Programer *dave = [[Programer alloc] init];
  dave.firstName = @"Dave";
  [dave setLastName:@"Albert"];
  dave.age = 37;
  dave.sex = kMale;
  
  [dave.languages addObject:@"Objective-C"];
  [dave.languages addObject:@"PHP"];
  [dave.languages addObject:@"Pascal"];
  [dave.languages addObject:@"Javascript"];
  
  NSLog(@"%@",[dave cv]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
