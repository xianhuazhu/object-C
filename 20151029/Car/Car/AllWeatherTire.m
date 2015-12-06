//
//  AllWeatherTire.m
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "AllWeatherTire.h"

@implementation AllWeatherTire

- (NSString *)rainHandling
{
    return _rainHandling;
}

- (NSString *)snowHandling
{
    return _snowHandling;
}

- (instancetype)initRainHandling:(NSString *)rainHandling andSnowHandling:(NSString *)snowHandling
{
    if (self = [super initPressure:10 andTireDeepth:40]) {
        _rainHandling = rainHandling;
        _snowHandling = snowHandling;
    }
    return self;
}

@end
