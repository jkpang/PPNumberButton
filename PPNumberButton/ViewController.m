//
//  ViewController.m
//  PPNumberButton
//
//  Created by AndyPang on 16/8/31.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

/*
 *********************************************************************************
 *
 *⭐️⭐️⭐️ 新建 PP-iOS学习交流群: 323408051 欢迎加入!!! ⭐️⭐️⭐️
 *
 * 如果您在使用 PPNumberButton 的过程中出现bug或有更好的建议,还请及时以下列方式联系我,我会及
 * 时修复bug,解决问题.
 *
 * Weibo : CoderPang
 * Email : jkpang@outlook.com
 * QQ 群 : 323408051
 * GitHub: https://github.com/jkpang
 *
 * PS:我的另外两个很好用的封装,欢迎使用!
 * 1.对AFNetworking 3.x 与YYCache的二次封装,一句代码搞定数据请求与缓存,告别FMDB:
 *   GitHub:https://github.com/jkpang/PPNetworkHelper
 * 2.一行代码获取通讯录联系人,并进行A~Z精准排序(已处理姓名所有字符的排序问题):
 *   GitHub:https://github.com/jkpang/PPGetAddressBook
 *
 * 如果 PPNumberButton 好用,希望您能Star支持,你的 ⭐️ 是我持续更新的动力!
 *********************************************************************************
 */

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
