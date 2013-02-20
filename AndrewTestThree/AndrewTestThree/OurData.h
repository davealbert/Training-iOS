//
//  OurData.h
//  AndrewTestThree
//
//  Created by Dave Albert on 20/02/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OurElement.h"

@interface OurData : NSObject

- (OurElement *)elementForRow:(NSInteger)row;
- (NSInteger)countOfRows;

@end
