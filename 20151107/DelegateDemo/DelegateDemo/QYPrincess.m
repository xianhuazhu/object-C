//
//  QYPrincess.m
//  DelegateDemo
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYPrincess.h"
#import "QYPrince.h"
@implementation QYPrincess

- (void)sleep
{
    NSLog(@"我要睡觉啦，记得叫我哦~~~");
    //睡觉之前先告知自己的委托，要多长时间之后叫醒她
    [self.delegate tellMeTime:8];
}
@end
