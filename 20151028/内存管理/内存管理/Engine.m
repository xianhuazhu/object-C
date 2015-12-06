//
//  Engine.m
//  内存管理
//
//  Created by qingyun on 15/10/28.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (void)setBrand:(NSString *)brand
{
    _brand = brand;
}

- (void)setPower:(float)power
{
    _power = power;
}

- (void)dealloc
{
    NSLog(@"%@ 挂了",_brand);
    [super dealloc];
}

@end
