//
//  Triangle.m
//  拆分画图
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

+ (instancetype)shapeWithColor:(SPColor)color andRect:(SPRect)rect
{
    Triangle *tg = [Triangle new];
    [tg setColor:color];
    [tg setRect:rect];
    return  tg;
}

- (void)setFoot:(float)foot
{
    _foot = foot;
}

- (float)foot
{
    return _foot;
}

- (void)setHeight:(float)height
{
    _height = height;
}

- (float)height
{
    return _height;
}

- (void)doSomething
{
    NSLog(@"随便..");
}

- (NSString *)takeColorName
{
    NSString *name;
    switch (_color) {
        case Kblue:
            name = @"天蓝色";
            break;
        case Kred:
            name = @"血红色";
            break;
        case Kyellow:
            name = @"土黄色";
            break;
        default:
            name = @"无色";
            break;
    }
    return name;
}

- (void)draw
{
    // 在子类中使用super可以调用父类中的方法逻辑
    [super draw]; // [self draw];
    // self 在子类对象方法中调用子类自身的其他方法
    // self 的本质也是一个指针，任何对象在调用对象方法的同时会把自身的地址传入到该方法，那么在该方法中就可以使用self来代替这个对象
    // 任何OC方法中 的self 都是 调用 这个方法那个对象 本身
    NSLog(@"self >>> %p", self);
    //[self doSomething];
    
    NSLog(@"%s:三角形", __func__);
}
@end
