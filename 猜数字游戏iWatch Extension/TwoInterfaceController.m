


//
//  TwoInterfaceController.m
//  猜数字游戏
//
//  Created by keyan on 15/10/16.
//  Copyright © 2015年 keyan. All rights reserved.
//

#import "TwoInterfaceController.h"

@interface TwoInterfaceController ()
//@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceImage *mainImageView;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *tableViewButton;
@end

@implementation TwoInterfaceController
- (IBAction)gotoTableView {
    [self presentControllerWithName:@"TableviewInterfaceController" context:nil];
}

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    [self animateWithDuration:0.1 animations:^{
        
    }];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



