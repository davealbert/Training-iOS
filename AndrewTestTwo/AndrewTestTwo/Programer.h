//
//  Programer.h
//  AndrewTestTwo
//
//  Created by Dave Albert on 08/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "Person.h"

@interface Programer : Person

@property (assign, nonatomic) int yearsOfExperiance;
@property (strong, nonatomic) NSMutableArray *languages;

- (NSString *)cv;

@end
