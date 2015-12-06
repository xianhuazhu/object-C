//
//  Car.m
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Car.h"


@implementation Car

- (NSString *)brand
{
    return _brand;
}

- (int)price
{
    return _price;
}

- (Tire *)tire
{
    return _tire;
}

- (Engine *)engine
{
    return _engine;
}

- (instancetype)initBrand:(NSString *)brand andPrice:(int)price
{
    if (self = [super init]) {
        _brand = brand;
        _price = price;
    }
    return self;
}

- (instancetype)initTire:(Tire *)tire
{
    if (self = [super init]) {
        _tire = tire;
    }
    return self;
}

- (instancetype)initEngine:(Engine *)engine
{
    if (self = [super init]) {
        _engine = engine;
    }
        return self;
}

- (instancetype)initTire:(Tire *)tire andEngine:(Engine *)engine
{
    if (self = [self initTire:tire]) {
        _engine = engine;
    }
    return self;
}
    
@end
