//
//  DHAddClockViewController.m
//  iClock
//
//  Created by BinaryBoy on 5/16/14.
//  Copyright (c) 2014 BinaryBoy. All rights reserved.
//

#import "DHAddClockViewController.h"

@interface DHAddClockViewController ()

@end

@implementation DHAddClockViewController
@synthesize txtHour,txtMin,txtSec,delegate;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)AddClock:(id)sender {
    //[self.navigationController popViewControllerAnimated:YES];
    
   // [self performSegueWithIdentifier:@"Done" sender:self];

    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   // [self dismissViewControllerAnimated:YES completion:nil];
    //[self.delegate addClockValuesWith:10 AndMin:20 AddSec:50];
    if ([[segue identifier] isEqualToString:@"Done"]) {
        
        [self.delegate addClockValuesWith:txtHour.text AndMin:txtMin.text  AddSec:txtSec.text ];

        
    }


}
- (IBAction)CancelAdd:(id)sender {
}
@end
