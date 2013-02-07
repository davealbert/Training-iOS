//
//  ViewController.m
//  AndrewTestOne
//
//  Created by Dave Albert on 05/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void)changeName;
@end



@implementation ViewController

@synthesize nameLabel = _nameLabel;
@synthesize nameField = _nameField;

#pragma mark - View Lifecycle

- (void)viewDidLoad {
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  NSLog(@"viewDidLoad");

  alertTextArray = [[NSArray alloc] initWithObjects:@"One",@"Two",@"Three", nil];
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
  return (UIInterfaceOrientationIsLandscape(toInterfaceOrientation));
}

#pragma mark - User Interaction Methods

- (IBAction)okPressed:(id)sender {
  [self changeName];
}

#pragma mark - Supporing Methods

- (void)changeName {
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Change"
                                                  message:@"You changed the name."
                                                 delegate:self
                                        cancelButtonTitle:@"Cancel"
                                        otherButtonTitles:[alertTextArray objectAtIndex:0],[alertTextArray objectAtIndex:1],[alertTextArray objectAtIndex:2],nil];
  [alert show];

  [[self nameLabel] setText:[[self nameField] text]];
}

#pragma mark - Delegate Methods

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
  [self changeName];
  [textField becomeFirstResponder];
  [textField resignFirstResponder];
  return YES;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
  if (buttonIndex == 0) {
    NSLog(@"Cancel");
  } else {
    NSLog(@"%@",[alertTextArray objectAtIndex:buttonIndex - 1]);
  }
}

@end
