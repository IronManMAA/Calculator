//
//  CalcViewController.m
//  Calculator
//
//  Created by Marco Almeida on 11/16/16.
//  Copyright © 2016 THE IRON YARD. All rights reserved.
//

#import "CalcViewController.h"


@interface CalcViewController ()
// <NumSetDelegate>
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
@property (assign) BOOL done;

//@property (assign) NSString *newvarEntry;

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
    self.done=NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Action  Handlers


- (IBAction)B0:(UIButton *)sender {
    if (self.done) {
        self.DisplayFrame.text=@"";
        self.done=NO;
    }
    if (!self.numVal1 && !self.numVal2)
        { self.numVal1 = [sender.titleLabel.text floatValue];}
        else
        {
        if (!self.numVal2)
        { self.numVal2 = [sender.titleLabel.text floatValue];}
    }
    self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:sender.titleLabel.text];
}

- (IBAction)BOperand:(UIButton *)sender {
    if (!(self.numVal1 == 0)) {
       if (!self.operandAction) {
       {self.DisplayFrame.text=[self.DisplayFrame.text stringByAppendingString:sender.titleLabel.text];}
       self.operandAction=sender.titleLabel.text;
       }
    } else {
        self.DisplayFrame.text=@"Please provide an operand.";
        self.operandAction=nil;
        self.numVal1 = 0;
        self.numVal2 = 0;
        self.numTotal = 0;
        self.done=YES;
        
    }
    }


- (IBAction)BClear:(UIButton *)sender
{
    self.DisplayFrame.text=@"";
    self.operandAction=nil;
    self.numVal1 = 0;
    self.numVal2 = 0;
    self.numTotal = 0;
    self.done=NO;
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
      if([self.operandAction isEqualToString:@"x"]) {
          NSArray *subStrings = [self.DisplayFrame.text componentsSeparatedByString:@"x"];
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
      
      self.DisplayFrame.text = [NSString stringWithFormat:@"%.02f", self.numTotal];
      self.operandAction=nil;
      self.numVal1 = 0;
      self.numVal2 = 0;
      self.numTotal = 0;
      self.done=YES;

    }


@end

