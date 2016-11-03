//
//  NSString+PPNumberButton.m
//  PPNumberButton
//
//  Created by 朵颐 on 16/11/3.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

#import "NSString+PPNumberButton.h"

@implementation NSString (PPNumberButton)

- (BOOL)isNotBlank
{
    NSCharacterSet *blank = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    for (NSInteger i = 0; i < self.length; ++i)
    {
        unichar c = [self characterAtIndex:i];
        if (![blank characterIsMember:c])
        {
            return YES;
        }
    }
    return NO;
}

@end
