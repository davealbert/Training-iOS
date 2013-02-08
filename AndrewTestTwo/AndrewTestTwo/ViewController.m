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
  
  Person *dave = [[Person alloc] init];
  dave.firstName = @"Dave";
  [dave setLastName:@"Albert"];
  dave.age = 37;
  dave.sex = kMale;
  
  NSLog(@"%@",[dave description]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
