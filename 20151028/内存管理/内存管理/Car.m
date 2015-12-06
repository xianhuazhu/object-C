//
//  Car.m
//  内存管理
//
//  Created by qingyun on 15/10/28.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)run
{
    NSLog(@"running >>>>>>>> ");
}

- (void)setName:(NSString *)name
{
    _name = name;
}

- (void)setEngine:(Engine *)engine
{
    [engine retain];
    _engine = engine;
}

- (void)dealloc
{
    NSLog(@"%@ 挂了",_name);
    [_engine release];
    [super dealloc];
}

@end
