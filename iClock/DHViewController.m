//
//  DHViewController.m
//  iClock
//
//  Created by BinaryBoy on 5/16/14.
//  Copyright (c) 2014 BinaryBoy. All rights reserved.
//

#import "DHViewController.h"
#import "DHClockTableViewCell.h"
#import "DHClock.h"
@interface DHViewController ()

@end

@implementation DHViewController{
    NSMutableArray*clocks;
}
@synthesize tblClocks;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    clocks=[[NSMutableArray alloc]init];
    
    [clocks addObject:[[DHClock alloc]initWithHour:@"5" AndWithMin:@"55" AndWithSec:@"56"]];
    [clocks addObject:[[DHClock alloc]initWithHour:@"8" AndWithMin:@"34" AndWithSec:@"56"]];
    [clocks addObject:[[DHClock alloc]initWithHour:@"9" AndWithMin:@"23" AndWithSec:@"56"]];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [clocks count];    //count number of row from counting array hear cataGorry is An Array
}



- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"clock";
    
    DHClockTableViewCell *cell = (DHClockTableViewCell*)[tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:MyIdentifier];
    }
    
    // Here we use the provided setImageWithURL: method to load the web image
    // Ensure you use a placeholder image otherwise cells will be initialized with no image
//    [cell.imageView setImageWithURL:[NSURL URLWithString:@"http://example.com/image.jpg"]
//                   placeholderImage:[UIImage imageNamed:@"placeholder"]];
//    cell.textLabel.text = @"My Text";
    
    
//    cell.myClock2.setTimeViaTouch = NO;
//    cell.myClock2.enableGraduations = NO;
//    cell.myClock2.realTime = YES;
//    cell.myClock2.currentTime = YES;
    cell.myClock2.faceBackgroundAlpha = 0;
    cell.myClock2.enableShadows = NO;
    cell.myClock2.borderColor = [UIColor colorWithRed:0 green:122.0/255.0 blue:255/255 alpha:1];
    cell.myClock2.hourHandColor = [UIColor colorWithRed:0 green:122.0/255.0 blue:255/255 alpha:1];
    cell.myClock2.minuteHandColor = [UIColor colorWithRed:0 green:122.0/255.0 blue:255/255 alpha:1];
    cell.myClock2.borderWidth = 1;
    cell.myClock2.hourHandWidth = 1.0;
    cell.myClock2.hourHandLength = 10;
    cell.myClock2.minuteHandWidth = 1.0;
    cell.myClock2.minuteHandLength = 15;
    cell.myClock2.minuteHandOffsideLength = 0;
    cell.myClock2.hourHandOffsideLength = 0;
    cell.myClock2.secondHandAlpha = 0;

    
    cell.myClock2.hours=[((DHClock*)[clocks objectAtIndex:indexPath.row]).hour intValue];
    cell.myClock2.minutes=[((DHClock*)[clocks objectAtIndex:indexPath.row]).min intValue];
    cell.myClock2.seconds=[((DHClock*)[clocks objectAtIndex:indexPath.row]).sec intValue];
    cell.myClock2.realTime = YES;

    [cell currentTimeOnClock:cell.myClock2 Hours:((DHClock*)[clocks objectAtIndex:indexPath.row]).hour Minutes:((DHClock*)[clocks objectAtIndex:indexPath.row]).min Seconds:((DHClock*)[clocks objectAtIndex:indexPath.row]).sec];
  
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 80;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    Yourstring=[catagorry objectAtIndex:indexPath.row];
//    
//    //Pushing next view
//    cntrSecondViewController *cntrinnerService = [[cntrSecondViewController alloc] initWithNibName:@"cntrSecondViewController" bundle:nil];
//    [self.navigationController pushViewController:cntrinnerService animated:YES];
    
}
-(void)addClockValuesWith:(NSString*)houe AndMin:(NSString*)min AddSec:(NSString*)sec{
    NSLog(@"%@ %@  %@",houe,min,sec);

    [tblClocks reloadData];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //if ([[segue identifier] isEqualToString:@"DHAddClockViewController"]) {
        
        DHAddClockViewController *addDrinkcontroller = [segue destinationViewController];
                                                         
        addDrinkcontroller.delegate = self;
        
 //   }
}
@end
