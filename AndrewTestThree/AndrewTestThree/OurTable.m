//
//  OurTable.m
//  AndrewTestThree
//
//  Created by Dave Albert on 20/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "OurTable.h"

@implementation OurTable

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      [self commonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    [self commonInit];
  }
  return self;
}

- (void)commonInit {
  self.dataSource = self;
  self.delegate = self;
  theData = [[OurData alloc] init];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return [theData countOfRows];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *cellIdentifier = @"OurTableCell";
  OurTableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  
  if (cell == nil) {
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"OurTableCell" owner:self options:NULL];
    cell = (OurTableCell *) [nib objectAtIndex:0];
  }
  
  // Configure the cell...
  OurElement *ele = [theData elementForRow:indexPath.row];
  [cell.ourDate setText:ele.date];
  [cell.ourLabel setText:ele.label];
  [cell.ourTitle setText:ele.text];

  
  return cell;
}

@end
