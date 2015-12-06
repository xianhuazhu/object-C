//
//  Shape.h
//  拆分画图
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Triangle.h"
#import "Circle.h"

typedef enum {
    Kblue,
    Kred,
    Kyellow
} SPColor;

typedef struct {
    int x;
    int y;
    int width;
    int height;
} SPRect;

// 类代码可以分为两部分存放，接口放在.h文件中，实现放在.m中

@interface Shape : NSObject

{
    SPColor _color;
    SPRect _rect;
}

+ (instancetype)shapeWithColor:(SPColor)color andRect:(SPRect)rect;

+ (NSString *)colorName:(SPColor)color;

- (NSString *)takeColorName;

// OC的方法命名方式 中缀符
// -/+ (返回值类型)方法名字第一部分:(参数类型)参数1 方法名字的第二部分:(参数类型)参数2 部分3:(类型)参数3........
// 下面这个方法的名字 doWith:andThing:andThing:
- (void)doWith:(int)thing1 andThing:(int)thing2 andThing:(int)thing3;
// 等同于c的函数声明 void dowiththing1andthin2andthing3(int t1, int t2, int t3);

- (void)setColor:(SPColor)color;
- (SPColor)color;

- (void)setRect:(SPRect)rect;
- (SPRect)rect;

- (void)draw;


@end
