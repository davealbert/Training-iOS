//
//  ViewController.m
//  AndrewTestOne
//
//  Created by Dave Albert on 05/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  NSLog(@"viewDidLoad");
}

-(void)viewWillAppear:(BOOL)animated {
  NSLog(@"viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
  NSLog(@"viewDidAppear");
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - User Interaction Methods

- (IBAction)okPressed:(id)sender {
  [self changeName];
}

#pragma mark - Supporing Methods

-(void)changeName {
  [[self nameLabel] setText:[[self nameField] text]];
}

#pragma mark - Delegate Methods

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
  [self changeName];
  [textField becomeFirstResponder];
  [textField resignFirstResponder];
  return YES;
}

@end
