//
//  Person.m
//  AndrewTestTwo
//
//  Created by Dave Albert on 08/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)fullName {
  NSString *fullName = [NSString stringWithFormat:@"%@ %@",self.firstName, self.lastName];
  return fullName;
}

- (NSString *)description {
  NSString *description = [NSString stringWithFormat:@"Name: %@, Age: %d, Sex:%@",[self fullName],self.age, [self sexDescription]];
  return description;
}


- (NSString *)sexDescription {
  switch (self.sex) {
    case kMale:
      return @"Male";
      break;
      
    case kFemale:
      return @"Female";
      break;
      
    case kOther:
      return @"Other";
      break;
      
    default:
      break;
  }
}
@end
