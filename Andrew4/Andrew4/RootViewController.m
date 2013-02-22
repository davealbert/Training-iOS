//
//  RootViewController.m
//  Andrew4
//
//  Created by Dave Albert on 21/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

  [self.mainMenuScrollView setContentSize:CGSizeMake(640.0f, 0.0f)];
  [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"absurd.png"]
                                                forBarMetrics:UIBarMetricsDefault];
  
}

-(void)viewDidAppear:(BOOL)animated {
  self.navigationController.navigationBarHidden = YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)pushView:(id)sender {
  if (!secondView) {
    secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
  }

  [self.navigationController pushViewController:secondView animated:YES];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
  CGFloat pageWidth = scrollView.frame.size.width;
  int page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
  self.pageControl.currentPage = page;
}


@end
