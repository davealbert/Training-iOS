//
//  ViewController.h
//  AndrewTestOne
//
//  Created by Dave Albert on 05/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIAlertViewDelegate> {
  NSArray *alertTextArray;
}


@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;

- (IBAction)okPressed:(id)sender;

@end
