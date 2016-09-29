//
//  PPNumberButton.h
//  PPNumberButton
//
//  Created by AndyPang on 16/8/31.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

/*
 *********************************************************************************
 *
 * 如果您在使用 PPNumberButton 的过程中出现bug或有更好的建议,还请及时以下列方式联系我,我会及
 * 时修复bug,解决问题.
 *
 * Weibo : CoderPang
 * Email : jkpang@outlook.com
 * QQ    : 2406552315
 * GitHub: https://github.com/jkpang
 *
 * PS:我的另外两个很好用的封装,欢迎使用!
 * 1.对AFNetworking 3.x 与YYCache的二次封装,一句代码搞定数据请求与缓存,告别FMDB:
 *   GitHub:https://github.com/jkpang/PPNetworkHelper
 * 2.一行代码获取通讯录联系人,并进行A~Z精准排序(已处理姓名所有字符的排序问题):
 *   GitHub:https://github.com/jkpang/PPGetAddressBook
 *
 *********************************************************************************
 */

#import <UIKit/UIKit.h>

@protocol PPNumberButtonDelegate <NSObject>

@optional
/**
 *  加减按钮点击响应的代理回调
 */
- (void)PPNumberButton:(UIView *)numberButton number:(NSString *)number;
@end

IB_DESIGNABLE
@interface PPNumberButton : UIView

/** 加减按钮的回调*/
@property (nonatomic, copy) void(^numberBlock)(NSString *number);
/** 代理*/
@property (nonatomic, weak) id<PPNumberButtonDelegate> delegate;

/**
 *  通过类方法创建一个按钮实例对象
 *
 *  @param frame 按钮的尺寸
 *
 *  @return 返回一个PPNumberButton的实例对象
 */
+ (instancetype)numberButtonWithFrame:(CGRect)frame;

#pragma mark - 自定义样式设置

/** 设置边框的颜色,如果没有设置颜色,就没有边框*/
@property (nonatomic, strong) IBInspectable UIColor *borderColor;

/** 是否开启抖动动画,默认NO*/
@property (nonatomic, assign, getter=isShakeAnimation) IBInspectable BOOL shakeAnimation;

/** 输入框中的内容*/
@property (nonatomic, copy) NSString *currentNumber;

/** 输入框中的字体属性*/
@property (nonatomic, strong) UIFont *inputFieldFont;

/** 加减按钮的字体属性*/
@property (nonatomic, strong) UIFont *buttonTitleFont;

//注意:加减号按钮的标题和背景图片只能设置其中一个,若全部设置,则以最后设置的类型为准
/**
 *  设置加/减按钮的标题
 *
 *  @param increaseTitle 加按钮标题
 *  @param decreaseTitle 减按钮标题
 */
- (void)setTitleWithIncreaseTitle:(NSString *)increaseTitle decreaseTitle:(NSString *)decreaseTitle;

/**
 *  设置加/减按钮的背景图片
 *
 *  @param increaseImage 加按钮背景图片
 *  @param decreaseImage 减按钮背景图片
 */
- (void)setImageWithIncreaseImage:(UIImage *)increaseImage decreaseImage:(UIImage *)decreaseImage;


@end
