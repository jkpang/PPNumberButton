//
//  ViewController.m
//  PPNumberButton
//
//  Created by AndyPang on 16/8/31.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

#import "ViewController.h"
#import "PPNumberButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self example1];
    [self example2];
    [self example3];
    [self example4];
    
}

//默认状态
- (void)example1
{
    PPNumberButton *numberButton = [[PPNumberButton alloc] initWithFrame:CGRectMake(100, 100, 110, 30)];
    //开启抖动动画
    numberButton.shakeAnimation = YES;
    numberButton.numberBlock = ^(NSString *num){
        NSLog(@"%@",num);
    };
    
    [self.view addSubview:numberButton];
}

//边框状态
- (void)example2
{
    PPNumberButton *numberButton = [[PPNumberButton alloc] initWithFrame:CGRectMake(100, 160, 200, 30)];
    //设置边框颜色
    numberButton.borderColor = [UIColor grayColor];
    
    numberButton.numberBlock = ^(NSString *num){
        NSLog(@"%@",num);
    };
    
    [self.view addSubview:numberButton];
}

//自定义加减按钮的文字
- (void)example3
{
    PPNumberButton *numberButton = [[PPNumberButton alloc] initWithFrame:CGRectMake(100, 220, 150, 44)];
    numberButton.shakeAnimation = YES;
    //设置边框颜色
    numberButton.borderColor = [UIColor grayColor];
    //设置加减按钮文字
    [numberButton setTitleWithIncreaseTitle:@"加" decreaseTitle:@"减"];
    
    numberButton.numberBlock = ^(NSString *num){
        NSLog(@"%@",num);
    };
    
    [self.view addSubview:numberButton];
}

//自定义加减按钮背景图片
- (void)example4
{
    PPNumberButton *numberButton = [[PPNumberButton alloc] initWithFrame:CGRectMake(100, 300, 100, 30)];
    numberButton.shakeAnimation = YES;
    //numberButton.backgroundColor = [UIColor clearColor];
    [numberButton setImageWithIncreaseImage:[UIImage imageNamed:@"timeline_relationship_icon_addattention"] decreaseImage:[UIImage imageNamed:@"decrease_highlight"]];
    
    numberButton.numberBlock = ^(NSString *num){
        NSLog(@"%@",num);
    };
    
    [self.view addSubview:numberButton];
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
