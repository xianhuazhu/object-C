//
//  QYCar.m
//  QYCar
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "QYCar.h"

@implementation QYCar

- (void)setPrice:(int)price
{
    _price = price;
}
- (int)price
{
    return _price;
}

- (void)setBrand:(NSString *)brand
{
    _brand = brand;
}
- (NSString *)brand
{
    return _brand;
}

- (void)setTire:(Tire *)tire
{
    _tire = tire;
}
- (Tire *)tire
{
    return _tire;
}

- (void)setTires:(Tire *)tires atIndex:(TireIndex)index
{
    _tires[index] = tires;
}
- (Tire *)tireAtIndex:(TireIndex)index
{
    return _tires[index];
}

- (void)draw
{
    NSLog(@"一辆%@车，价格是：%d，轮胎是%@", _brand, _price, _tire);
    
}

@end
