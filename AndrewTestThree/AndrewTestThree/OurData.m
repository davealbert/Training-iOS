//
//  OurData.m
//  AndrewTestThree
//
//  Created by Dave Albert on 20/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "OurData.h"

@implementation OurData {
  NSArray *allData;
}

- (id)init {
  self = [super init];
  if (self) {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"tableData" ofType:@"plist"];
    allData = [[NSArray alloc] initWithContentsOfFile:path];
  }
  return self;
}

- (OurElement *)elementForRow:(NSInteger)row{
  OurElement *element = [[OurElement alloc] init];
  NSDictionary *dict = [allData objectAtIndex:row];
  [element setLabel:[dict objectForKey:@"label"]];
  [element setDate:[dict objectForKey:@"date"]];
  [element setText:[dict objectForKey:@"text"]];
  return element;
}

- (NSInteger)countOfRows {
  return [allData count];
}

@end
