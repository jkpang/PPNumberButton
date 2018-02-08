//
//  PPViewController3.m
//  PPNumberButton
//
//  Created by zhengwenming on 2018/2/8.
//  Copyright © 2018年 AndyPang. All rights reserved.
//

#import "PPViewController3.h"
#import "PPNumberButton.h"

@interface PPViewController3 ()<UITextFieldDelegate>
@property(nonatomic,strong)PPNumberButton *numberButton;
@property(nonatomic,strong)UITextField *maxValueTF;
@property(nonatomic,strong)UITextField *stepValueTF;

@end

@implementation PPViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *maxValueLabel = [UILabel new];
    maxValueLabel.text = @"设置最大值:";
    maxValueLabel.textColor = [UIColor greenColor];
    maxValueLabel.font = [UIFont systemFontOfSize:15.0];
    [maxValueLabel sizeToFit];
    
    
    UILabel *stepValueLabel = [UILabel new];
    stepValueLabel.text = @"设置步长值:";
    stepValueLabel.textColor = [UIColor greenColor];
    stepValueLabel.font = [UIFont systemFontOfSize:15.0];
    [stepValueLabel sizeToFit];
    
    self.maxValueTF = [[UITextField alloc] initWithFrame:CGRectMake(30, 100, maxValueLabel.frame.size.width+50, 30)];
    self.maxValueTF.delegate = self;
    self.maxValueTF.backgroundColor = [UIColor lightGrayColor];
    self.maxValueTF.textAlignment = NSTextAlignmentCenter;
    self.maxValueTF.keyboardType = UIKeyboardTypeDecimalPad;
    self.maxValueTF.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:self.maxValueTF];
    self.maxValueTF.leftView = maxValueLabel;
    
    self.stepValueTF = [[UITextField alloc] initWithFrame:CGRectMake(30, CGRectGetMaxY(self.maxValueTF.frame)+30, stepValueLabel.frame.size.width+50, 30)];
    self.stepValueTF.delegate = self;
    self.stepValueTF.backgroundColor = [UIColor lightGrayColor];
    self.stepValueTF.textAlignment = NSTextAlignmentCenter;
    self.stepValueTF.keyboardType = UIKeyboardTypeDecimalPad;
    self.stepValueTF.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:self.stepValueTF];
    self.stepValueTF.leftView = stepValueLabel;
    
    
    self.numberButton = [PPNumberButton numberButtonWithFrame:CGRectMake(100, 220, 120, 30)];
    self.numberButton.shakeAnimation = YES;
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
    }else if (textField==self.maxValueTF){
        self.numberButton.maxValue = textField.text.floatValue;
    }
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}
@end
