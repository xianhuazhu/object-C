//
//  Circle.m
//  拆分画图2
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (void)setRadius:(int)radius
{
    _radius = radius;
}
- (int)radius
{
    return _radius;
}

- (void)draw
{
  //  [super draw];
    NSLog(@"半径为%d的圆",_radius);
}

@end
