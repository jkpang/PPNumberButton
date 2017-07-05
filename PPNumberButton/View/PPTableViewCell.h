//
//  PPTableViewCell.h
//  PPNumberButton
//
//  Created by YiAi on 2017/7/5.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PPTableViewModel;
@interface PPTableViewCell : UITableViewCell

@property (nonatomic, strong) PPTableViewModel *model;
@property (nonatomic, copy) void(^resultBlock)(NSInteger number);
@end


@interface PPTableViewModel : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) NSInteger number;
@end
