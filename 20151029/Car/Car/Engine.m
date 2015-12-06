//
//  Engine.m
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (NSString *)name
{
    return _name;
}

- (int)power
{
    return _power;
}

- (instancetype)init
{
    if (self = [super init]) {
        _name = @"xingxing";
        _power = 10;
    }
    return self;
}

@end
