//
//  TableViewController.m
//  01-UIPopoverController的基本用法(掌握)
//
//  Created by AndyDev on 15/9/5.
//  Copyright © 2015年 AndyDev. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property (nonatomic, strong) NSArray *dataArray;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArray = @[@"电影", @"电视剧", @"动漫", @"美妆"];
    
    self.preferredContentSize = CGSizeMake(320, self.dataArray.count * 44);
}


#pragma mark - TableView代理方法

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1];
    cell.textLabel.text = @"黑8同学很牛B";
    return cell;
}

- (void)tableView:(nonnull UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if (self.selectCellBlock) {
        UIColor *color = [tableView cellForRowAtIndexPath:indexPath].backgroundColor;
        self.selectCellBlock(color);
    }
}

@end
