//
//  OutTableCell.h
//  AndrewTestThree
//
//  Created by Dave Albert on 20/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OurTableCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *ourLabel;
@property (strong, nonatomic) IBOutlet UILabel *ourTitle;
@property (strong, nonatomic) IBOutlet UILabel *ourDate;

@end
