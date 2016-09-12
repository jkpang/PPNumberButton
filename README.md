# PPNumberButton
仿京东淘宝购物车商品的加减按钮,可定制程度较高,使用简单!

*  支持自定义加/减按钮的标题内容、背景图片;
* 支持设置边框颜色;
* 支持使用键盘输入;
* 支持长按加/减按钮快速加减; 
* 支持block回调与delegate(代理)回调.
* 支持使用xib创建、类方法创建、自定义大小

[简书地址](http://www.jianshu.com/p/0b6f53a1ccaf) ;

![示例图](https://github.com/jkpang/PPNumberButton/blob/master/PPNumberButton.gif)

##Requirements 要求
* iOS 7+
* Xcode 7+

##Installation 安装
###1.手动安装:
下载DEMO后,将子文件夹PPNumberButton拖入到项目中, 导入头文件PPNumberButton.h开始使用.
###2.CocoaPods安装:
first
`pod 'PPNumberButton', '~> 0.1.1' `
then
`pod install或pod install --no-repo-update`

如果发现pod search PPNetworkHelper 不是最新版本，在终端执行pod setup命令更新本地spec镜像缓存(时间可能有点长),重新搜索就OK了
##Usage 使用方法
####实例化方法
`[[PPNumberButton alloc] init];`:默认的frame为CGRectMake(0, 0, 110, 30)

或

`[[PPNumberButton alloc] initWithFrame:frame];`

或

`[PPNumberButton numberButtonWithFrame:frame];`: 类方法创建
###1.默认样式

```objc
 PPNumberButton *numberButton = [[PPNumberButton alloc] initWithFrame:CGRectMake(100, 100, 110, 30)];
 //按钮的block回调
 numberButton.numberBlock = ^(NSString *num){
        NSLog(@"%@",num);
 };
 [self.view addSubview:numberButton];
```
###2.边框样式

```objc
PPNumberButton *numberButton = [[PPNumberButton alloc] initWithFrame:CGRectMake(100, 160, 200, 30)];
//设置边框颜色(如果没有设置颜色就没有边框)
numberButton.borderColor = [UIColor grayColor];
numberButton.numberBlock = ^(NSString *num){
      NSLog(@"%@",num);
 };
[self.view addSubview:numberButton];
```
###3.自定义加减按钮的标题

```objc
 PPNumberButton *numberButton = [[PPNumberButton alloc] initWithFrame:CGRectMake(100, 220, 150, 44)];
    //设置加减按钮文字
[numberButton setTitleWithIncreaseTitle:@"加" decreaseTitle:@"减"];
numberButton.numberBlock = ^(NSString *num){
     NSLog(@"%@",num);
};
[self.view addSubview:numberButton];
```
###4.自定义加减按钮的背景图片

```objc
PPNumberButton *numberButton = [[PPNumberButton alloc] initWithFrame:CGRectMake(100, 300, 100, 30)];
//设置加减按钮的背景图片
[numberButton setImageWithIncreaseImage:[UIImage imageNamed:@"➕按钮图片"] decreaseImage:[UIImage imageNamed:@"➖按钮图片"]];
numberButton.numberBlock = ^(NSString *num){
        NSLog(@"%@",num);
};
    
[self.view addSubview:numberButton];

```
#####注: 加减号按钮的标题和背景图片只能设置其中一个,若全部设置,则以最后设置的类型为准

##使用xib创建
在控制器界面拖入UIView控件,在右侧的设置栏中将class名修改为PPNumberButton,按回车就OK了.

![示例图](https://github.com/jkpang/PPNumberButton/blob/master/photo.png)

====
因为之前的项目中需要,在网上找了好多都不符合要求,干脆自己花了点时间撸了一个,现在分享出来,希望能帮到有需要的人。 如果你觉得不错,希望点个Star鼓励一下
#####你的Star是我持续更新的动力!

##CocoaPods更新日志
* 2016.09.12(tag:0.1.1)--小细节优化
* 2016.09.03(tag:0.1.0)--Pods初始化

##联系方式:
* Weibo : @CoderPang
* Email : jkpang@outlook.com
* QQ : 2406552315

##许可证
PPNumberButton 使用 MIT 许可证，详情见 LICENSE 文件。


