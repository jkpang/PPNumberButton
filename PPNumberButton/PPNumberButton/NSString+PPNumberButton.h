//
//  NSString+PPNumberButton.h
//  PPNumberButton
//
//  Created by 朵颐 on 16/11/3.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (PPNumberButton)

/**
 字符串 nil, @"", @"  ", @"\n" Returns NO;
 其他 Returns YES.
 */
- (BOOL)isNotBlank;

@end
