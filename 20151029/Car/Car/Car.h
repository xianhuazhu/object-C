//
//  Car.h
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Tire;
@class Engine;

@interface Car : NSObject
{
    NSString *_brand;
    int _price;
    Tire *_tire;
    Engine *_engine;
}

- (NSString *)brand;

- (int)price;

- (Tire *)tire;

- (Engine *)engine;

- (instancetype)initBrand:(NSString *)brand andPrice:(int)price;

- (instancetype)initTire:(Tire *)tire;

- (instancetype)initEngine:(Engine *)engine;

- (instancetype)initTire:(Tire *)tire andEngine:(Engine *)engine;


@end
