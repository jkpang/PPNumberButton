//
//  PPViewController1.m
//  PPNumberButton
//
//  Created by YiAi on 2017/7/5.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

#import "PPViewController1.h"
#import "PPNumberButton.h"

@interface PPViewController1 () <PPNumberButtonDelegate>

@end

@implementation PPViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self example1];
    [self example2];
    [self example3];
    [self example4];
}

/**
 自定义加减按钮文字标题
 */
- (void)example1
{
    PPNumberButton *numberButton = [PPNumberButton numberButtonWithFrame:CGRectMake(100, 100, 110, 30)];
    // 开启抖动动画
    numberButton.shakeAnimation = YES;
    // 设置最小值
    numberButton.minValue = 2;
    // 设置最大值
    numberButton.maxValue = 10;
    // 设置输入框中的字体大小
    numberButton.inputFieldFont = 23;
    numberButton.increaseTitle = @"＋";
    numberButton.decreaseTitle = @"－";
    numberButton.currentNumber = 777;
    numberButton.delegate = self;
    numberButton.longPressSpaceTime = CGFLOAT_MAX;
    
    numberButton.resultBlock = ^(NSInteger num ,BOOL increaseStatus){
        NSLog(@"%ld",num);
    };
    [self.view addSubview:numberButton];
}

- (void)pp_numberButton:(__kindof UIView *)numberButton number:(NSInteger)number increaseStatus:(BOOL)increaseStatus
{
    NSLog(@"%@",increaseStatus ? @"加运算":@"减运算");
}

/**
 边框状态
 */
- (void)example2
{
    PPNumberButton *numberButton = [PPNumberButton numberButtonWithFrame:CGRectMake(100, 160, 150, 30)];
    //设置边框颜色
    numberButton.borderColor = [UIColor grayColor];
    numberButton.increaseTitle = @"＋";
    numberButton.decreaseTitle = @"－";
    numberButton.currentNumber = 777;
    numberButton.resultBlock = ^(NSInteger num ,BOOL increaseStatus){
        NSLog(@"%ld",num);
    };
    
    [self.view addSubview:numberButton];
}


/**
 自定义加减按钮背景图片
 */
- (void)example3
{
    PPNumberButton *numberButton = [PPNumberButton numberButtonWithFrame:CGRectMake(100, 220, 100, 30)];
    numberButton.shakeAnimation = YES;
    numberButton.increaseImage = [UIImage imageNamed:@"increase_taobao"];
    numberButton.decreaseImage = [UIImage imageNamed:@"decrease_taobao"];
    
    numberButton.resultBlock = ^(NSInteger num ,BOOL increaseStatus){
        NSLog(@"%ld",num);
    };
    
    [self.view addSubview:numberButton];
}

/**
 饿了么,美团外卖,百度外卖样式
 */
- (void)example4
{
    PPNumberButton *numberButton = [PPNumberButton numberButtonWithFrame:CGRectMake(100, 280, 100, 30)];
    // 初始化时隐藏减按钮
    numberButton.decreaseHide = YES;
    numberButton.increaseImage = [UIImage imageNamed:@"increase_meituan"];
    numberButton.decreaseImage = [UIImage imageNamed:@"decrease_meituan"];
    numberButton.currentNumber = -777;
    numberButton.resultBlock = ^(NSInteger num ,BOOL increaseStatus){
        NSLog(@"%ld",num);
    };
    
    [self.view addSubview:numberButton];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


@end
