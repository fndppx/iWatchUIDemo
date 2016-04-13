//
//  TableviewInterfaceController.h
//  猜数字游戏
//
//  Created by keyan on 15/10/16.
//  Copyright © 2015年 keyan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface TableviewInterfaceController : WKInterfaceController
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceTable *interfaceTableView;

@end
