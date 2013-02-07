  //
  //  SecondViewController.m
  //  AndrewTestOne
  //
  //  Created by Dave Albert on 07/02/2013.
  //  Copyright (c) 2013 Dave Albert. All rights reserved.
  //

#import "SecondViewController.h"

@interface UIScrollView (BigXib)
-(void)addSelfToView:(UIView *)theView below:(UIView *)below;
@end

@implementation UIScrollView (BigXib)
-(void)addSelfToView:(UIView *)theView below:(UIView *)below {
  [self setContentSize:self.frame.size];
  [self setFrame:theView.frame];
  
  [theView insertSubview:self belowSubview:below];
}
@end



@implementation SecondViewController

@synthesize myInt        = _myInt;
@synthesize myScrollView = _myScrollView;
@synthesize closeButton  = _closeButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
      // Custom initialization
  }
  return self;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];

    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
  [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  
  [self.myScrollView addSelfToView:self.view below:self.closeButton];
}

- (void)viewDidUnload {
  [self setMyScrollView:nil];
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
