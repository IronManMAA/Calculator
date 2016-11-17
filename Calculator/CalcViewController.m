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
@property (assign) float numVal1;
@property (assign) float numVal2;
@property (assign) float numTotal;
@property (assign) NSString *DisplayText;
@property (assign) NSString *NumValST;
@property (assign) NSString *operandAction;
@property (assign) BOOL decimalDot;
@property (assign) BOOL done;
@end

@implementation CalcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.DisplayFrame.text=@"";
    self.operandAction=nil;
    self.numVal1 = 0;
    self.numVal2 = 0;
    self.numTotal = 0;
    self.decimalDot=NO;
    self.done=NO;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Action  Handlers


- (IBAction)B0:(UIButton *)sender {self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"0"];}
- (IBAction)B1:(UIButton *)sender {self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"1"];}
- (IBAction)B2:(UIButton *)sender {self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"2"];}
- (IBAction)B3:(UIButton *)sender {self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"3"];}
- (IBAction)B4:(UIButton *)sender {self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"4"];}
- (IBAction)B5:(UIButton *)sender {self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"5"];}
- (IBAction)B6:(UIButton *)sender {self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"6"];}
- (IBAction)B7:(UIButton *)sender {self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"7"];}
- (IBAction)B8:(UIButton *)sender {self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"8"];}
- (IBAction)B9:(UIButton *)sender {self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"9"];}


- (IBAction)BClear:(UIButton *)sender
{
    self.DisplayFrame.text=@"";
    self.operandAction=nil;
    self.numVal1 = 0;
    self.numVal2 = 0;
    self.numTotal = 0;
    self.decimalDot=NO;
    self.done=YES;
 
}

 - (IBAction)BMult:(UIButton *)sender
 {
    self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"*"];
    self.operandAction=@"*";
 }
 - (IBAction)BMinus:(UIButton *)sender
 {
    self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"-"];
    self.operandAction=@"-";
 }
 - (IBAction)BDiv:(UIButton *)sender
 {
    self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"/"];
    self.operandAction=@"/";
 }
 - (IBAction)BPlus:(UIButton *)sender
  {
       self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"+"];
       self.operandAction=@"+";
  }
 - (IBAction)BDot:(UIButton *)sender
 {
    if (!self.decimalDot) {
        self.decimalDot=YES;
        self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:@"."];
    }
 }



- (IBAction)BEqual:(UIButton *)sender
  {
//      NSArray *subStrings = [myString componentsSeparatedByString:@"-"]; //or rather @" - "
//      NSString *firstString = [subStrings objectAtIndex:0];
//      NSString *lastString = [subStrings objectAtIndex:1];
//      if (self.numVal1>0 && self.numVal2>0) {
      self.numTotal=0;
      if([self.operandAction isEqualToString:@"+"]) {
        NSArray *subStrings = [self.DisplayFrame.text componentsSeparatedByString:@"+"];
          NSString *firstString = [subStrings objectAtIndex:0];
          NSString *lastString = [subStrings objectAtIndex:1];
          self.numVal1 = [firstString floatValue];
          self.numVal2 = [lastString floatValue];
          self.numTotal=self.numVal1 + self.numVal2;}
      if([self.operandAction isEqualToString:@"-"]) {
          NSArray *subStrings = [self.DisplayFrame.text componentsSeparatedByString:@"-"];
          NSString *firstString = [subStrings objectAtIndex:0];
          NSString *lastString = [subStrings objectAtIndex:1];
          self.numVal1 = [firstString floatValue];
          self.numVal2 = [lastString floatValue];
          self.numTotal=self.numVal1 - self.numVal2;}
      if([self.operandAction isEqualToString:@"*"]) {
          NSArray *subStrings = [self.DisplayFrame.text componentsSeparatedByString:@"*"];
          NSString *firstString = [subStrings objectAtIndex:0];
          NSString *lastString = [subStrings objectAtIndex:1];
          self.numVal1 = [firstString floatValue];
          self.numVal2 = [lastString floatValue];
          self.numTotal=self.numVal1 * self.numVal2;}
      if([self.operandAction isEqualToString:@"/"]) {
          NSArray *subStrings = [self.DisplayFrame.text componentsSeparatedByString:@"/"];
          NSString *firstString = [subStrings objectAtIndex:0];
          NSString *lastString = [subStrings objectAtIndex:1];
          self.numVal1 = [firstString floatValue];
          self.numVal2 = [lastString floatValue];
          self.numTotal=self.numVal1 / self.numVal2;}
      
      self.DisplayFrame.text = [NSString stringWithFormat:@"%f", self.numTotal];
      self.operandAction=nil;
      self.numVal1 = 0;
      self.numVal2 = 0;
      self.numTotal = 0;
      self.decimalDot=NO;
      self.done=YES;


    }



@end

