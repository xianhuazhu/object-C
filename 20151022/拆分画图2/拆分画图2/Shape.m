//
//  Shape.m
//  拆分画图2
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Shape.h"

@implementation Shape

- (void)setColor:(SpColor)color
{
    _color = color;
}
- (SpColor)color
{
    return _color;
}

- (void)setRect:(SpArea)rect
{
    _rect = rect;
}
- (SpArea)rect
{
    return _rect;
}

+ (Shape *)Shape:(SpColor)color andShapeRect:(SpArea)rect
{
    Shape *sp = [Shape new];
    [sp setColor:color];
    [sp setRect:rect];
    return sp;
    
}

- (NSString *)takeColorName
{
    NSString *name;
    switch (_color) {
        case Cred:
            name = @"红色";
            break;
        case Cblack:
            name = @"黑色";
            break;
        case Cpurple:
            name = @"紫色";
            break;
        default:
            name = @"透明";
            break;
    }
    
    return name;
    
}

- (void)draw
{
    NSLog(@"在{%d,%d,%d,%d}的位置画了一个%@的", _rect.x, _rect.y, _rect.wide, _rect.high, [self takeColorName]);
}

@end
