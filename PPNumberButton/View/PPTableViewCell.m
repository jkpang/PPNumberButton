//
//  PPTableViewCell.m
//  PPNumberButton
//
//  Created by YiAi on 2017/7/5.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

#import "PPTableViewCell.h"
#import "PPNumberButton.h"

@interface PPTableViewCell () <PPNumberButtonDelegate>

@property (nonatomic, strong) PPNumberButton *numberButton;

@end

@implementation PPTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self.contentView addSubview:self.numberButton];
}

- (void)setModel:(PPTableViewModel *)model
{
    _model = model;
    self.numberButton.currentNumber = model.number;
}

#pragma mark - PPNumberButtonDelegate
- (void)pp_numberButton:(PPNumberButton *)numberButton number:(NSInteger)number increaseStatus:(BOOL)increaseStatus
{
    _model.number = number;
}

#pragma mark - lazy
- (PPNumberButton *)numberButton
{
    if (!_numberButton) {
        _numberButton = [PPNumberButton numberButtonWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - 110 - 20, 15, 110, 30)];
        _numberButton.delegate = self;
        // 初始化时隐藏减按钮
        _numberButton.decreaseHide = YES;
        _numberButton.increaseImage = [UIImage imageNamed:@"increase_meituan"];
        _numberButton.decreaseImage = [UIImage imageNamed:@"decrease_meituan"];
        _numberButton.resultBlock = ^(NSInteger num ,BOOL increaseStatus){
            NSLog(@"%ld",num);
        };
    }
    return _numberButton;
}

@end

@implementation PPTableViewModel

@end
