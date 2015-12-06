//
//  QYCar.h
//  QYCar
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Tire.h"

typedef enum
{
    LeftFront,
    LeftBack,
    RightFront,
    RightBack
}TireIndex;

@interface QYCar : NSObject
{
    int _price;
    NSString *_brand;
    Tire *_tire;
    Tire *_tires[4];
}

- (void)setPrice:(int)price;
- (int)price;

- (void)setBrand:(NSString *)brand;
- (NSString *)brand;

- (void)setTire:(Tire *)tire atIndex:(TireIndex)index;
- (Tire *)tireAtIndex:(TireIndex)index;

- (void)setTires:(Tire *)tires;
- (Tire *)tires;

- (void)draw;

@end
