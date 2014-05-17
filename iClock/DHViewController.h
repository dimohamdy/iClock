//
//  DHViewController.h
//  iClock
//
//  Created by BinaryBoy on 5/16/14.
//  Copyright (c) 2014 BinaryBoy. All rights reserved.
//
#import "DHAddClockViewController.h"
#import <UIKit/UIKit.h>
#import "BEMAnalogClockView.h"
#import "BEMMinuteHand.h"
@interface DHViewController : UIViewController<AddClockDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tblClocks;
@end
