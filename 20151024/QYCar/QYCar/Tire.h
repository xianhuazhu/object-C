//
//  Tire.h
//  QYCar
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
{
    NSString *_brand;
    NSString *_stripe;
    float _pressure;
}

- (void)setBrand:(NSString *)brand;
- (NSString *)brand;

- (void)setStripe:(NSString *)stripe;
- (NSString *)stripe;

- (void)setPressure:(float)pressure;
- (float)pressure;

@end
