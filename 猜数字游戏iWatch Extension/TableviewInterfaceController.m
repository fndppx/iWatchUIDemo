
//
//  TableviewInterfaceController.m
//  猜数字游戏
//
//  Created by keyan on 15/10/16.
//  Copyright © 2015年 keyan. All rights reserved.
//

#import "TableviewInterfaceController.h"
#import "MyTableViewCell.h"
@interface TableviewInterfaceController ()
@property (strong , nonatomic) NSArray *techNameArray;

@end

@implementation TableviewInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    [self initializeTableViewWithData];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
//       [self initializeTableViewWithData];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}
- (void)initializeTableViewWithData {
    
    self.techNameArray = @[@"安卓", @"ios", @"java", @"php", @"c++"];
    
    [self.interfaceTableView setNumberOfRows:self.techNameArray.count withRowType:@"default"];
    
    [self.techNameArray enumerateObjectsUsingBlock:^(NSString *techName, NSUInteger idx, BOOL *stop) {
        
        MyTableViewCell *tableRow = [self.interfaceTableView rowControllerAtIndex:idx];
        
        [tableRow.titleLabel setText:techName];
        
    }];
    
}
- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex
{
//    NSLog(@"点击了");
    
}
@end



