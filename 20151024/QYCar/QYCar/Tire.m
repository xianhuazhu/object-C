//
//  Tire.m
//  QYCar
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (void)setBrand:(NSString *)brand
{
    _brand = brand;
}
- (NSString *)brand
{
    return _brand;
}

- (void)setStripe:(NSString *)stripe
{
    _stripe = stripe;
}
- (NSString *)stripe
{
    return _stripe;
}

- (void)setPressure:(float)pressure
{
    _pressure = pressure;
}
- (float)pressure
{
    return _pressure;
}

- (NSString *)description
{
    NSString *des = [NSString stringWithFormat:@"%@品牌,花纹是：%@",_brand, _stripe];
    return des;
}

@end
