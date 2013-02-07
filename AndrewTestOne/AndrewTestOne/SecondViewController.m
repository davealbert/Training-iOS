//
//  SecondViewController.m
//  AndrewTestOne
//
//  Created by Dave Albert on 07/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController
@synthesize myInt = _myInt;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];

    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
  return (UIInterfaceOrientationIsLandscape(toInterfaceOrientation));
}

#pragma mark - User Interaction Methods

- (IBAction)closeSelf:(id)sender {
  [self dismissModalViewControllerAnimated:YES];
}

@end
