//
//  main.m
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Car.h"
#import "Engine.h"
#import "Tire.h"
#import "AllWeatherTire.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       AllWeatherTire *allWeatherTire = [[AllWeatherTire alloc] initRainHandling:@"较强" andSnowHandling:@"较弱"];
        Engine *engine = [[Engine alloc] init];

          NSLog(@"车压是：%d，车深度：%d，车品牌：%@，价格：%d，车引擎名字：%@，车引擎动力：%d，下雨天防化能力：%@，下雪天防化能力：%@",[allWeatherTire pressure],[allWeatherTire tireDeepth],[allWeatherTire brand],[allWeatherTire price],[engine name],[engine power],[allWeatherTire rainHandling],[allWeatherTire snowHandling]);
        
    }
    return 0;
}
