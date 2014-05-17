//
//  DHClock.h
//  iClock
//
//  Created by BinaryBoy on 5/17/14.
//  Copyright (c) 2014 BinaryBoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DHClock : NSObject
@property (nonatomic,strong)NSString* hour;
@property (nonatomic,strong)NSString* min;
@property (nonatomic,strong)NSString* sec;
-(id)initWithHour:(NSString*)hour AndWithMin:(NSString*)min AndWithSec:(NSString*)sec;

@end
