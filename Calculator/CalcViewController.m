//
//  CalcViewController.m
//  Calculator
//
//  Created by Marco Almeida on 11/16/16.
//  Copyright © 2016 THE IRON YARD. All rights reserved.
//

#import "CalcViewController.h"


@interface CalcViewController () <NumSetDelegate>
// <NumSetDelegate> is the signature that this TimerViewController.m file conforms to the protocal set in the SetTimerViewController.h file header id

@property (weak, nonatomic) IBOutlet UILabel *DisplayFrame;
// IBOutlet is used to change the attributes of the label object e.g. size, color, location, etc.
// IBAction is used to define actions or handle content. We use methods for this.
@property (assign) NSInteger numVal1;
@property (assign) NSInteger numVal2;


@end

@implementation CalcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.numVal1 = 0;
    self.numVal2 = 0;
    
//    self.DisplayFrame.text = @"7";

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Action  Handlers

- (IBAction)B7:(UIButton *)sender
{
    
//    self.DisplayFrame.text = @"7";
//    self.timeLabel.text = [NSString stringWithFormat:@"%ld sec",(long)self.originalTimerValue];
    
}

#pragma mark - Num set delegate
- (void) numValueWasChosen:(NSInteger)numValue
{
//    self.originalTimerValue = timeValue;
//    if (self.timer)
//    {
//        // if self timer value exist, stop timer
//        [self.timer invalidate];
//        self.timer = nil;
//    }
//    self.currentTimerValue =self.originalTimerValue;
//    self.timeLabel.text = [NSString stringWithFormat:@"%ld sec",(long)self.currentTimerValue];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    if ([segue.identifier isEqualToString:@"SetTimeSeque"])
//    {
  //      SetTimerViewController *setTimerVC=[segue destinationViewController];
  //      setTimerVC.delegate=self;
//    }
}



@end


/*
 
 #import "TimerViewController.h"
 #import "SetTimerViewController.h"
 
 @interface TimerViewController () <TimeSetDelegate>
 // <TimeSetDelegate> is the signature that this TimerViewController.m file conforms to the protocal set in the SetTimerViewController.h file header id
 
 @property (weak, nonatomic) IBOutlet UILabel *timeLabel;
 // IBOutlet is used to change the attributes of the label object e.g. size, color, location, etc.
 // IBAction is used to define actions or handle content. We use methods for this.
 @property (assign) NSInteger currentTimerValue;
 @property (assign) NSInteger originalTimerValue;
 @property (nonatomic) NSTimer *timer;
 @end
 
 @implementation TimerViewController
 
 - (void)viewDidLoad {
 [super viewDidLoad];
 // Do any initiolize and additional setup after loading the view, typically from a nib.
 
 self.currentTimerValue = 60;
 self.originalTimerValue = 60;
 
 }
 
 
 - (void)didReceiveMemoryWarning {
 [super didReceiveMemoryWarning];
 // Dispose of any resources that can be recreated.
 }
 
 #pragma mark - Action  Handlers
 // Action Handlers is a use define name given for this code section
 // the above is similar to comments that are not read by the computer.  Benefit of using this is that it is included in the navegation bar as a book mark to help go directly to this section. e.g. click on @implementation ViewController above in the navegation bar to see the Action Handlers section.
 
 - (IBAction)startTimer:(UIButton *)sender
 // * above indicates that this is a pointer
 {
 if (!self.timer)
 // "!" means the oposite of true. In this case it reads "if Self.timer not true them run code
 // this is used to check if self.timer is running already, if not running do it, otheriwise stop and set it to nothing
 {
 self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self
 selector:@selector(timerFired) userInfo:nil repeats: YES];
 }
 else
 {
 [self.timer invalidate];
 self.timer = nil;
 // stop timer and set it to nothing
 }
 }
 
 - (IBAction)stopTimer:(UIButton *)sender
 {
 [self.timer invalidate];
 self.timer = nil;
 // stop timer and set it to nothing
 
 }
 
 - (IBAction)resetTimer:(UIButton *)sender
 {
 
 [self.timer invalidate];
 self.timer = nil;
 // above: stop timer and set it to nothing
 // below: recreate timer
 self.currentTimerValue = self.originalTimerValue;
 self.timeLabel.text = [NSString stringWithFormat:@"%ld sec",(long)self.originalTimerValue];
 
 }
 
 #pragma mark - Time set delegate
 - (void) timeValueWasChosen:(NSInteger)timeValue
 {
 self.originalTimerValue = timeValue;
 if (self.timer)
 {
 // if self timer value exist, stop timer
 [self.timer invalidate];
 self.timer = nil;
 }
 self.currentTimerValue =self.originalTimerValue;
 self.timeLabel.text = [NSString stringWithFormat:@"%ld sec",(long)self.currentTimerValue];
 }
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 if ([segue.identifier isEqualToString:@"SetTimeSeque"])
 {
 SetTimerViewController *setTimerVC=[segue destinationViewController];
 setTimerVC.delegate=self;
 }
 }
 
 
 #pragma mark - Misc.
 
 -(void)timerFired
 {
 if (self.currentTimerValue > 0)
 {
 self.currentTimerValue = self.currentTimerValue -1;
 self.timeLabel.text = [NSString stringWithFormat:@"%ld sec",(long)self.currentTimerValue];
 }
 else
 {
 [self.timer invalidate];
 // turn timer off
 }
 }
 
 @end

 */
