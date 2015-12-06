//
//  main.m
//  drawShapOOP
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    RedColor,
    BlackColor,
    PurpleColor
}SpColor;

typedef struct
{
    int x;
    int y;
    int Width;
    int high;
}SpRectangle;

//Shape类
@interface Shape :NSObject
{
    SpRectangle _rec;
    SpColor _color;
}

+ (Shape *)shapeWithColor:(SpColor)color andRect:(SpRectangle)Rect;

- (void)setRec : (SpRectangle)rec;
- (SpRectangle)rec;

- (void)setColor:(SpColor)color;
- (SpColor)color;

- (NSString *)takeColorName;

- (void)draw;

@end

@implementation Shape

+ (Shape *)shapeWithColor:(SpColor)color andRect:(SpRectangle)Rect
{
    Shape *sp = [Shape new];
    [sp setColor:color];
    [sp setRec:Rect];
    return sp;
}

- (void)setRec : (SpRectangle)rec
{
    _rec = rec;
}
- (SpRectangle)rec
{
    return _rec;
}

-(void)setColor:(SpColor)color
{
    _color = color;
}
- (SpColor)color
{
    return _color;
}

- (NSString *)takeColorName
{
    NSString *name;
    switch (_color) {
        case RedColor:
            name = @"红色";
            break;
        case BlackColor:
            name = @"黑色";
            break;
        case PurpleColor:
            name = @"紫色";
            break;
        default:
            name = @"未知";
            break;
    }
    return name;
}

- (void)draw
{
    NSLog(@"在{%d,%d,%d,%d}画了一个%@颜色的三角形", _rec.x , _rec.y , _rec.Width , _rec.high ,[self takeColorName] );
}

@end

//三角形
@interface Triangle : Shape
{
    
}


@end

@implementation Triangle


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Shape *sp1 = [Shape shapeWithColor:PurpleColor andRect:(SpRectangle){12,12,199,19}];
        [sp1 draw];
    }
    return 0;
}
