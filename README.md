![](https://github.com/jkpang/PPNumberButton/blob/master/Picture/PPNumberButton.png)

![](https://img.shields.io/badge/platform-iOS-red.svg) ![](https://img.shields.io/badge/language-Objective--C-orange.svg) ![](https://img.shields.io/cocoapods/v/PPNumberButton.svg?style=flat) ![](https://img.shields.io/cocoapods/dt/PPNumberButton.svg) ![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg)  [![](https://img.shields.io/badge/weibo-%40CoderPang-yellow.svg)](http://weibo.com/5743737098/profile?rightmod=1&wvr=6&mod=personinfo&is_all=1)

### iOS中一款高度可定制性商品计数按钮,使用简单!

* 支持自定义加/减按钮的标题内容、背景图片;
* 支持设置边框颜色;
* 支持使用键盘输入;
* 支持长按加/减按钮快速加减; 
* 支持block回调与delegate(代理)回调;
* 支持使用xib创建、直接在IB面板设置相关属性;
* 支持设置maxValue(最大值)与minValue(最小值).
* 支持按钮自定义为京东/淘宝样式,饿了么/美团外卖/百度外卖样式;

### 新建 PP-iOS学习交流群 : 323408051 有关于PP系列封装的问题和iOS技术可以在此群讨论
[简书地址](http://www.jianshu.com/p/0b6f53a1ccaf) ;

#### 如果你需要Swift版本,请戳: https://github.com/jkpang/PPNumberButtonSwift

![示例图1](https://github.com/jkpang/PPNumberButton/blob/master/Picture/PPNumberButton1.gif) ![示例图2](https://github.com/jkpang/PPNumberButton/blob/master/Picture/PPNumberButton2.gif)

## Requirements 要求
* iOS 7+
* Xcode 8+

## Installation 安装
### 1.手动安装:
下载DEMO后,将子文件夹PPNumberButton拖入到项目中, 导入头文件PPNumberButton.h开始使用.
### 2.CocoaPods安装:
first
`pod 'PPNumberButton'
then
`pod install或pod install --no-repo-update`

如果发现pod search PPNumberButton 不是最新版本，在终端执行pod setup命令更新本地spec镜像缓存(时间可能有点长),重新搜索就OK了
## Usage 使用方法
#### 实例化方法
`[[PPNumberButton alloc] init];`:默认的frame为CGRectMake(0, 0, 110, 30)
或
`[[PPNumberButton alloc] initWithFrame:frame];`

或
`[PPNumberButton numberButtonWithFrame:frame];`: 类方法创建
### 1.自定义加减按钮文字标题

```objc
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
    
numberButton.resultBlock = ^(NSString *num){
    NSLog(@"%@",num);
};
[self.view addSubview:numberButton];
```
### 2.边框状态

```objc
PPNumberButton *numberButton = [PPNumberButton numberButtonWithFrame:CGRectMake(100, 160, 150, 30)];
//设置边框颜色
numberButton.borderColor = [UIColor grayColor];
numberButton.increaseTitle = @"＋";
numberButton.decreaseTitle = @"－";
numberButton.resultBlock = ^(NSString *num){
    NSLog(@"%@",num);
}; 
[self.view addSubview:numberButton];

```
### 3.自定义加减按钮背景图片

```objc
PPNumberButton *numberButton = [PPNumberButton numberButtonWithFrame:CGRectMake(100, 220, 100, 30)];
numberButton.shakeAnimation = YES;
numberButton.increaseImage = [UIImage imageNamed:@"increase_taobao"];
numberButton.decreaseImage = [UIImage imageNamed:@"decrease_taobao"];
numberButton.resultBlock = ^(NSString *num){
    NSLog(@"%@",num);
};
[self.view addSubview:numberButton];
```
### 4.饿了么,美团外卖,百度外卖样式

```objc
PPNumberButton *numberButton = [PPNumberButton numberButtonWithFrame:CGRectMake(100, 280, 100, 30)];
// 初始化时隐藏减按钮
numberButton.decreaseHide = YES;
numberButton.increaseImage = [UIImage imageNamed:@"increase_meituan"];
numberButton.decreaseImage = [UIImage imageNamed:@"decrease_meituan"];
numberButton.resultBlock = ^(NSString *num){
    NSLog(@"%@",num);
};
[self.view addSubview:numberButton];
```

**更多详细用法参见Demo**

## 使用xib创建
在控制器界面拖入UIView控件,在右侧的设置栏中将class名修改为PPNumberButton,按回车就OK了 **(注意:如果通过Cocopods导入, 使用XIB/SB创建按钮会显示不全,还可能会报错.但APP可以编译运行,这应该是Cocopods或Xcode的问题)**.
![示例图](https://github.com/jkpang/PPNumberButton/blob/master/Picture/photo1.png)
_*注意!如果有的同学将控件拖线到代码中,千万不要忘记在拖线的代码文件中导入 "PPNumberButton.h"头文件,否则会报错.*_

**可以在IB界面设置相关属性**
![示例图](https://github.com/jkpang/PPNumberButton/blob/master/Picture/photo2.png)

因为之前的项目中需要,在网上找了好多都不符合要求,干脆自己花了点时间撸了一个,现在分享出来,希望能帮到有需要的人。 如果你觉得不错,希望点个Star鼓励一下!
#### 你的Star是我持续更新的动力!

## CocoaPods更新日志

```
• 2018.02.08(tag:0.8.0): 
  1.新增步长stepValue;
  2.新增支持小数功能属性decimalNum.
  
• 2017.07.05(tag:0.7.0): 
  1.新增 longPressSpaceTime 属性,设置长按加减速度的快慢以及功能关闭;
  2.新增tableView列表Demo;
  3.其他代码小细节优化.
  
• 2016.12.22(tag:0.6.0): 
  1.将代理与Block回调的结果数字的类型 由 NSString -> NSInteger;
  2.代理与Block回调结果增加 increaseStatus(加运算状态);
  3.修复有时代理方法没有被实现导致Crash的Bug;
  4.修复减按钮为隐藏模式时,减运算到最小值没有回调的BUG.
								  
• 2016.12.19(tag:0.5.0):
  新增 editing(是否可以使用键盘输入)属性.
  
• 2016.12.09(tag:0.4.0): 
  1.修复当”减”按钮初始化为隐藏模式时, 对其赋值不了的BUG;
  2.优化代码,修复其他小问题.
  
• 2016.11.03(tag:0.3.0)--重大更新:
  1.增加饿了么/美团外卖/百度外卖样式;
  2.调整自定义属性设置接口.
  
• 2016.11.03(tag:0.2.0): 
  设置maxValue(最大值)与minValue(最小值)属性接口.
  
• 2016.09.14(tag:0.1.2);
  添加使用XIB创建时的实时显示
  
• 2016.09.12(tag:0.1.1): 
  小细节优化.
  
• 2016.09.03(tag:0.1.0):
  Pods初始化.
```

## 联系方式:
* Weibo : [@jkpang-庞](http://weibo.com/5743737098/profile?rightmod=1&wvr=6&mod=personinfo&is_all=1)
* Email : jkpang@outlook.com
* QQ群  : 323408051
* Blog  : https://www.jkpang.cn

![PP-iOS学习交流群群二维码](https://github.com/jkpang/PPCounter/blob/master/PP-iOS%E5%AD%A6%E4%B9%A0%E4%BA%A4%E6%B5%81%E7%BE%A4%E7%BE%A4%E4%BA%8C%E7%BB%B4%E7%A0%81.png)

## 许可证
PPNumberButton 使用 MIT 许可证，详情见 LICENSE 文件。


