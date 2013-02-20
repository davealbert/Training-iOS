//
//  OurTable.h
//  AndrewTestThree
//
//  Created by Dave Albert on 20/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OurData.h"
#import "OurElement.h"
#import "OurTableCell.h"

@interface OurTable : UITableView <UITableViewDataSource, UITableViewDelegate> {
  OurData *theData;
}

@end
