//
//  AllWeatherTire.h
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Tire.h"

@interface AllWeatherTire : Tire
{
    NSString *_rainHandling;
    NSString *_snowHandling;
}

- (NSString *)rainHandling;

- (NSString *)snowHandling;

- (instancetype)initRainHandling:(NSString *)rainHandling andSnowHandling:(NSString *)snowHandling;

@end
