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
 *⭐️⭐️⭐️ 新建 PP-iOS学习交流群: 323408051 欢迎加入!!! ⭐️⭐️⭐️
 *
 * 如果您在使用 PPNumberButton 的过程中出现bug或有更好的建议,还请及时以下列方式联系我,我会及
 * 时修复bug,解决问题.
 *
 * Weibo : jkpang-庞
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

#import <UIKit/UIKit.h>

@class PPNumberButton;
@protocol PPNumberButtonDelegate <NSObject>
@optional

/**
 加减代理回调
 
 @param numberButton 按钮
 @param number 结果
 @param increaseStatus 是否为加状态
 */
- (void)pp_numberButton:(PPNumberButton *)numberButton number:(NSInteger)number increaseStatus:(BOOL)increaseStatus;

@end


IB_DESIGNABLE
@interface PPNumberButton : UIView

- (instancetype)initWithFrame:(CGRect)frame;
+ (instancetype)numberButtonWithFrame:(CGRect)frame;

/** 加减按钮的Block回调*/
@property (nonatomic, copy) void(^resultBlock)(PPNumberButton *ppBtn,CGFloat number, BOOL increaseStatus/* 是否为加状态*/);
/** 代理*/
@property (nonatomic, weak) id<PPNumberButtonDelegate> delegate;

#pragma mark - 自定义样式属性设置
/** 是否开启抖动动画, default is NO*/
@property (nonatomic, assign ) IBInspectable BOOL shakeAnimation;
/** 为YES时,初始化时减号按钮隐藏(饿了么/百度外卖/美团外卖按钮模式),default is NO*/
@property (nonatomic, assign ) IBInspectable BOOL decreaseHide;
/** 是否可以使用键盘输入,default is YES*/
@property (nonatomic, assign, getter=isEditing) IBInspectable BOOL editing;

/** 设置边框的颜色,如果没有设置颜色,就没有边框 */
@property (nonatomic, strong ) IBInspectable UIColor *borderColor;

/** 输入框中的内容 */
@property (nonatomic, assign ) CGFloat currentNumber;
/** 递增步长，默认步长为1 */
@property (nonatomic, assign ) CGFloat stepValue;

/** 输入框中的字体大小 */
@property (nonatomic, assign ) IBInspectable CGFloat inputFieldFont;

/** 长按加减的时间间隔,默认0.1s,设置为 CGFLOAT_MAX 则关闭长按加减功能*/
@property (nonatomic, assign ) IBInspectable CGFloat longPressSpaceTime;

/** 加减按钮的字体大小 */
@property (nonatomic, assign ) IBInspectable CGFloat buttonTitleFont;
/** 加按钮背景图片 */
@property (nonatomic, strong ) IBInspectable UIImage *increaseImage;
/** 减按钮背景图片 */
@property (nonatomic, strong ) IBInspectable UIImage *decreaseImage;
/** 加按钮标题 */
@property (nonatomic, copy   ) IBInspectable NSString *increaseTitle;
/** 减按钮标题 */
@property (nonatomic, copy   ) IBInspectable NSString *decreaseTitle;

/** 最小值, default is 0 */
@property (nonatomic, assign ) IBInspectable CGFloat minValue;
/** 最大值 */
@property (nonatomic, assign ) CGFloat maxValue;
/** 目前支持一位小数的递增 */
@property (nonatomic, assign ) BOOL decimalNum;

@end

#pragma mark - NSString分类
@interface NSString (PPNumberButton)
/**
 字符串 nil, @"", @"  ", @"\n" Returns NO;
 其他 Returns YES.
 */
- (BOOL)pp_isNotBlank;
@end

