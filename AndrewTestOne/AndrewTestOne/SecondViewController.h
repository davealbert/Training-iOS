//
//  SecondViewController.h
//  AndrewTestOne
//
//  Created by Dave Albert on 07/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (assign, nonatomic) int myInt;
@property (strong, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (strong, nonatomic) IBOutlet UIButton *closeButton;

- (IBAction)closeSelf:(id)sender;

@end
