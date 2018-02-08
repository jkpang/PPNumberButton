//
//  PPHomePageController.m
//  PPNumberButton
//
//  Created by YiAi on 2017/7/5.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

#import "PPHomePageController.h"
#import "PPViewController1.h"
#import "PPViewController2.h"

@interface PPHomePageController ()

@end

@implementation PPHomePageController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 66;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    cell.detailTextLabel.numberOfLines = 0;
    if (indexPath.row == 0) {
        cell.textLabel.text = @"PPViewController1";
        cell.detailTextLabel.text = @"普通view形式";
    }else if (indexPath.row == 1) {
        cell.textLabel.text = @"PPViewController2";
        cell.detailTextLabel.text = @"列表形式 - table style";
    }else if (indexPath.row == 2) {
        cell.textLabel.text = @"PPViewController3";
        cell.detailTextLabel.text = @"新增动态改变步长stepValue、动态改变最大值maxValue、动态改变是否支持小数等功能展示";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *controller = [storyBoard instantiateViewControllerWithIdentifier:[NSString stringWithFormat:@"PPViewController%ld",indexPath.row+1]];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
