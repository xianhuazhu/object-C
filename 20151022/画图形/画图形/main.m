//
//  main.m
//  画图形
//
//  Created by qingyun on 15/10/22.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

//颜色类
@interface Color : NSObject
{
    NSString *_black;
    NSString *_red;
    NSString *_purple;
}

//颜色类的方法的声明
- (void)setBlack : (NSString *)black;
- (NSString *)black;

- (void)setRed : (NSString *)red;
- (NSString *)red;

- (void)setPurple : (NSString *)purple;
- (NSString *)purple;

@end

//颜色类的方法的实现
@implementation Color

- (void)setBlack : (NSString *)black
{
    _black = black;
}
- (NSString *)black
{
    return _black;
}

- (void)setRed : (NSString *)red
{
    _red = red;
}
- (NSString *)red
{
    return _red;
}

- (void)setPurple : (NSString *)purple
{
    _purple = purple;
}
- (NSString *)purple
{
    return _purple;
}

@end

//图形类
@interface Shape : NSObject
{
    NSString *_circle;
    NSString *_rectangle;
    NSString *_triangle;
}

//图形类的方法的声明
- (void)setCircle : (NSString *)circle;
- (NSString *)circle;

- (void)setRectangle : (NSString *)rectangle;
- (NSString *)rectangle;

- (void)setTriangle : (NSString *)triangle;
- (NSString *)triangle;

@end

//图形类的方法的实现
@implementation Shape

- (void)setCircle : (NSString *)circle
{
    _circle = circle;
}
- (NSString *)circle
{
    return _circle;
}

- (void)setRectangle : (NSString *)rectangle
{
    _rectangle = rectangle;
}
- (NSString *)rectangle
{
    return _rectangle;
}

-(void)setTriangle : (NSString *)triangle
{
    _triangle = triangle;
}
-(NSString *)triangle
{
    return _triangle;
}

@end


//位置类
@interface Location : NSObject
{
    float _longth;
    float _wide;
    float _high;
}

//位置类的方法的声明
- (void)setLongth : (float)longth;
- (float)longth;

- (void)setWide : (float)wide;
- (float)wide;

- (void)setHigh : (float)high;
- (float)high;

- (void)drawLocation : (Shape *)someShape;

@end

//位置类的方法的实现
@implementation Location

- (void)setLongth : (float)longth
{
    _longth = longth;
}
- (float)longth
{
    return _longth;
}

- (void)setWide : (float)wide
{
    _wide = wide;
}
- (float)wide
{
    return _wide;
}

- (void)setHigh : (float)high
{
    _high = high;
}
- (float)high
{
    return _high;
}

- (void)drawLocation : (Shape *)someShape
{
    NSLog(@"在长宽高分别为：%2f, %2f, %2f 的位置画了一个%@ 图形", _longth, _wide, _high, [Shape circle] );
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Shape *sp = [Shape new];
        [sp setCircle : @"圆形"];
        [sp setRectangle : @"长方形"];
        [sp setTriangle : @"三角形"];
        
        Location * ln = [Location new];
        [ln setLongth : 10];
        [ln setWide : 10];
        [ln setHigh : 19];
        [ln drawLocation : sp];
        
        Color *cr = [Color new];
        [cr setBlack : @"黑色"];
        [cr setRed : @"红色"];
        [cr setPurple : @"紫色"];
        
 
    }
    return 0;
}
