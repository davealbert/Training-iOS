//
//  RootViewController.h
//  Andrew4
//
//  Created by Dave Albert on 21/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@interface RootViewController : UIViewController <UIScrollViewDelegate> {
  SecondViewController *secondView;
}

@property (strong, nonatomic) IBOutlet UIScrollView *mainMenuScrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

- (IBAction)pushView:(id)sender;

@end
