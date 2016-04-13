//
//  InterfaceController.m
//  猜数字游戏iWatch Extension
//
//  Created by keyan on 15/10/16.
//  Copyright © 2015年 keyan. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
{
    NSInteger guessNumber;
}
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceSlider *guessSlider;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *guessLabel;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *resultLabel;

@end


@implementation InterfaceController
- (IBAction)gotoGuessAction {
    NSInteger randomNumber = (int)(arc4random_uniform(6));
    
    if(guessNumber == randomNumber) {
        [_resultLabel setText:@"恭喜你猜对了!"];
        [self presentControllerWithName:@"TwoInterfaceController" context:nil];
    } else {
      [_resultLabel setText:[NSString stringWithFormat:@"猜错了，正确答案是%d",randomNumber]];
    }
    
}
- (IBAction)updateGuessNum:(float)value {
    guessNumber = (int)value;
    [_guessLabel setText:[NSString stringWithFormat:@"你猜的数字是%d",guessNumber]];
}

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    guessNumber = 0;
    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



