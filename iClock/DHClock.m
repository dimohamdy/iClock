//
//  DHClock.m
//  iClock
//
//  Created by BinaryBoy on 5/17/14.
//  Copyright (c) 2014 BinaryBoy. All rights reserved.
//

#import "DHClock.h"

@implementation DHClock
-(id)initWithHour:(NSString*)hour AndWithMin:(NSString*)min AndWithSec:(NSString*)sec{
    if (self) {
        self.hour=hour;
        self.min=min;
        self.sec=sec;
    }
    return self;
}
@end
