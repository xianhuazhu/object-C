//
//  Car.h
//  内存管理
//
//  Created by qingyun on 15/10/28.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Engine;

@interface Car : NSObject
{
    NSString *_name;
    Engine *_engine;
}

- (void)run;

- (void)setName:(NSString *)name;

- (void)setEngine:(Engine *)engine;

@end
