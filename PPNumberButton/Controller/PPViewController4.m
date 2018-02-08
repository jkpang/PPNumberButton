//
//  PPViewController4.m
//  PPNumberButton
//
//  Created by zhengwenming on 2018/2/8.
//  Copyright © 2018年 AndyPang. All rights reserved.
//

#import "PPViewController4.h"
#import "PPNumberButton.h"

@interface PPViewController4 ()<UITextFieldDelegate>
@property(nonatomic,strong)PPNumberButton *numberButton;
@property(nonatomic,strong)UITextField *stepValueTF;

@end

@implementation PPViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *stepValueLabel = [UILabel new];
    stepValueLabel.text = @"设置步长值:";
    stepValueLabel.textColor = [UIColor greenColor];
    stepValueLabel.font = [UIFont systemFontOfSize:15.0];
    [stepValueLabel sizeToFit];
    
    
    self.stepValueTF = [[UITextField alloc] initWithFrame:CGRectMake(30, 100+30, stepValueLabel.frame.size.width+50, 30)];
    self.stepValueTF.delegate = self;
    self.stepValueTF.backgroundColor = [UIColor lightGrayColor];
    self.stepValueTF.textAlignment = NSTextAlignmentCenter;
    self.stepValueTF.keyboardType = UIKeyboardTypeDecimalPad;
    self.stepValueTF.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:self.stepValueTF];
    self.stepValueTF.leftView = stepValueLabel;
    
    
    self.numberButton = [PPNumberButton numberButtonWithFrame:CGRectMake(100, 220, 120, 30)];
    self.numberButton.shakeAnimation = YES;
    //目前支持一位小数的递增
    self.numberButton.decimalNum = YES;
    self.numberButton.backgroundColor = [UIColor lightGrayColor];
    self.numberButton.increaseImage = [UIImage imageNamed:@"increase_taobao"];
    self.numberButton.decreaseImage = [UIImage imageNamed:@"decrease_taobao"];
    __weak __typeof(&*self) weakSelf = self;
    self.numberButton.resultBlock = ^(PPNumberButton *ppBtn, CGFloat number, BOOL increaseStatus){
        [weakSelf.view endEditing:YES];
        NSLog(@"%f",number);
    };
    [self.view addSubview:self.numberButton];
    self.numberButton.center = self.view.center;
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField==self.stepValueTF) {
        self.numberButton.stepValue = textField.text.floatValue;
    }
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}
@end
