//
//  TableViewController.h
//  01-UIPopoverController的基本用法(掌握)
//
//  Created by AndyDev on 15/9/5.
//  Copyright © 2015年 AndyDev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

@property (nonatomic, copy) void(^selectCellBlock)(UIColor *);

@end
