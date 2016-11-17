//
//  ViewController.h
//  Calculator
//
//  Created by Marco Almeida on 11/16/16.
//  Copyright © 2016 THE IRON YARD. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NumSetDelegate
- (void) numValueWasChosen:(NSInteger)numValue;
@end

//@property (nonatomic) id<NumSetDelegate> delegate;
//id is a bucket or container where you can place anything <> means a filter the object placed inside the id bucket must conform

@interface CalcViewController : UIViewController

@end

