//
//  Tire.m
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (int)pressure
{
    return _pressure;
}

- (int)tireDeepth
{
    return _tireDeepth;
}

- (instancetype)initBrand:(NSString *)brand
{
    if (self = [super init]) {
        _brand = brand;
    }
    return self;
}

- (instancetype)initPressure:(int)pressure andTireDeepth:(int)tiredeepth
{
    if (self = [super initBrand:@"宝马" andPrice:4000000]) {
        _pressure = pressure;
        _tireDeepth = tiredeepth;
    }
    return self;
}


@end
