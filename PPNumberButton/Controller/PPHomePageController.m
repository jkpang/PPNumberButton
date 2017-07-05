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
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"PPViewController1";
        cell.detailTextLabel.text = @"普通view形式";
    }
    
    if (indexPath.row == 1) {
        cell.textLabel.text = @"PPViewController2";
        cell.detailTextLabel.text = @"列表形式 - table style";
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
