//
//  Shape.m
//  拆分画图
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Shape.h"

@implementation Shape

// 一般情况下不需要写特殊的类方法
// 最常写一种类方法就是下面这种创建对象的类方法，这样封装对象的创建过程和主要成员变量赋值的过程
+ (instancetype)shapeWithColor:(SPColor)color andRect:(SPRect)rect
{
    Shape *t = [Shape new];
    [t setColor:color];
    [t setRect:rect];
    return t;
}

+ (NSString *)colorName:(SPColor)color
{
    NSString *name;
    switch (color) {
        case Kblue:
            name = @"蓝色";
            break;
        case Kred:
            name = @"红色";
            break;
        case Kyellow:
            name = @"黄色";
            break;
        default:
            name = @"透明";
            break;
    }
    return name;
}

- (NSString *)takeColorName
{
    NSString *name;
    switch (_color) {
        case Kblue:
            name = @"蓝色";
            break;
        case Kred:
            name = @"红色";
            break;
        case Kyellow:
            name = @"黄色";
            break;
        default:
            name = @"透明";
            break;
    }
    return name;
}

- (void)doWith:(int)thing1 andThing:(int)thing2 andThing:(int)thing3
{
    NSLog(@".....");
}

- (void)setColor:(SPColor)color
{
    _color = color;
}
- (SPColor)color
{
    return _color;
}

- (void)setRect:(SPRect)rect
{
    _rect = rect;
}
- (SPRect)rect
{
    return _rect;
}

- (void)draw
{
    //NSLog(@"在 {%d,%d,%d,%d} 区域内用 %@ 颜色画了一个图形", _rect.x, _rect.y, _rect.width, _rect.height, [self takeColorName]);
    NSLog(@"self >>> %p", self);
    NSLog(@"%s:在 {%d, %d, %d, %d} 区域内用 %@ 颜色画了一个:", __func__, _rect.x, _rect.y, _rect.width, _rect.height, [self takeColorName]);
}
@end
