//
//  Person.h
//  AndrewTestTwo
//
//  Created by Dave Albert on 08/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum gender {
  kMale = 0,
  kFemale = 1,
  kOther = 2
  } gender;

@interface Person : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) gender sex;


- (NSString *)fullName;
- (NSString *)description;

@end
