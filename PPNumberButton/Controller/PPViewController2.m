//
//  PPViewController2.m
//  PPNumberButton
//
//  Created by YiAi on 2017/7/5.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

#import "PPViewController2.h"
#import "PPTableViewCell.h"

@interface PPViewController2 ()

@property (nonatomic, strong) NSMutableArray<PPTableViewModel *> *dataSource;

@end

@implementation PPViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = 60;
    self.tableView.tableFooterView = [UIView new];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([PPTableViewCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([PPTableViewCell class])];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PPTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([PPTableViewCell class])];
    
    cell.model = self.dataSource[indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld个按钮",indexPath.row+1];
    
    return cell;
}

#pragma mark - lazy
- (NSMutableArray *)dataSource
{
    if (!_dataSource) {
        _dataSource = [[NSMutableArray alloc] init];
        
        for (NSInteger i = 0; i < 20; i++) {
            PPTableViewModel *model = [PPTableViewModel new];
            model.number = 0;
            [_dataSource addObject:model];
        }
    }
    return _dataSource;
}

@end
