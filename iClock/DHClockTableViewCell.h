//
//  DHClockTableViewCell.h
//  iClock
//
//  Created by BinaryBoy on 5/16/14.
//  Copyright (c) 2014 BinaryBoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BEMAnalogClockView.h"
#import "BEMMinuteHand.h"
@interface DHClockTableViewCell : UITableViewCell<BEMAnalogClockDelegate>

@property (weak, nonatomic) IBOutlet BEMAnalogClockView *myClock2; // The smaller clock.
@property (strong, nonatomic) IBOutlet UILabel *myLabel;


@end
