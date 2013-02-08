//
//  Programer.m
//  AndrewTestTwo
//
//  Created by Dave Albert on 08/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "Programer.h"

@implementation Programer

- (id)init {
  self = [super init];
  
  if (self) {
    self.languages = [[NSMutableArray alloc] init];
  }
  
  return self;
}

- (NSString *)cv {
  NSString *cv = [NSString stringWithFormat:@"%@\n\n",[self description]];
  
  for (int i=0; i<[self.languages count]; i++) {
    cv = [cv stringByAppendingFormat:@"%@\n",[self.languages objectAtIndex:i]];
  }
  return cv;
}
@end
