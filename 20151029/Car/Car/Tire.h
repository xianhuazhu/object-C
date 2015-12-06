//
//  Tire.h
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Car.h"

@interface Tire : Car
{
    int _pressure;
    int _tireDeepth;
    
}

- (int)pressure;

- (int)tireDeepth;

- (instancetype)initBrand:(NSString *)brand;

- (instancetype)initPressure:(int)pressure andTireDeepth:(int)tiredeepth;


@end
