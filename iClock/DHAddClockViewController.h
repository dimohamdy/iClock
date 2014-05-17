//
//  DHAddClockViewController.h
//  iClock
//
//  Created by BinaryBoy on 5/16/14.
//  Copyright (c) 2014 BinaryBoy. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddClockDelegate <NSObject>
-(void) addClockValuesWith:(int)houe AndMin:(int)min AddSec:(int)sec;
@end

@interface DHAddClockViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtHour;
@property (weak, nonatomic) IBOutlet UITextField *txtMin;
@property (weak, nonatomic) IBOutlet UITextField *txtSec;
- (IBAction)AddClock:(id)sender;
- (IBAction)CancelAdd:(id)sender;
@property(weak,nonatomic) id<AddClockDelegate> delegate;

@end
