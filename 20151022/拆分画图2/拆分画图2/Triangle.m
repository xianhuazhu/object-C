//
//  Triangle.m
//  拆分画图2
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

+ (Triangle *)doWithTriangle:(SpColor)color andRect:(SpArea)rect
{
    Triangle *tg = [Triangle new];
    [tg setColor:color];
    [tg setRect:rect];
    
    return tg;
}

- (void)setBase:(float)base
{
    _base = base;
}
- (float)base
{
    return _base;
}

- (NSString *)takeColorName
{
    NSString *name;
    switch (_color) {
        case Cred:
            name = @"酒红色";
            break;
        case Cblack:
            name = @"浅黑色";
            break;
        case Cpurple:
            name = @"淡紫色";
            break;
        default:
            name = @"天蓝色";
            break;
    }
    return name;
}

- (void)draw
{
    [super draw];
    NSLog(@"低边为%.2f的三角形",_base);
}


@end
