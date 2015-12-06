//
//  main.m
//  画图形2
//
//  Created by qingyun on 15/10/22.
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

//三角形
@interface Triangle :NSObject
{
    SpRectangle _rec;
    SpColor _color;
}

+ (Triangle *)triangleWithColor:(SpColor)color andRect:(SpRectangle)Rect;

- (void)setRec : (SpRectangle)rec;
- (SpRectangle)rec;

- (void)setColor:(SpColor)color;
- (SpColor)color;

- (NSString *)takeColorName;

- (void)draw;

@end

@implementation Triangle

+ (Triangle *)triangleWithColor:(SpColor)color andRect:(SpRectangle)Rect
{
    Triangle *t = [Triangle new];
    [t setColor:color];
    [t setRec:Rect];
    return t;
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





//圆形
@interface Circle :NSObject
{
    SpRectangle _rec;
    SpColor _color;
}

+ (Circle*)circleWithColor:(SpColor)color andRect:(SpRectangle)Rect;

- (void)setRec : (SpRectangle)rec;
- (SpRectangle)rec;

- (void)setColor:(SpColor)color;
- (SpColor)color;

- (NSString *)takeColorName;

- (void)draw;

@end

@implementation Circle

+ (Circle *)circleWithColor:(SpColor)color andRect:(SpRectangle)Rect
{
    Circle *ce = [Circle new];
    [ce setColor:color];
    [ce setRec:Rect];
    return ce;
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



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Triangle *tg = [Triangle triangleWithColor:RedColor andRect:(SpRectangle){10,10,100,80}];
        [tg draw];
        
        NSLog(@"colorName >>>>>>>>> %@",[tg takeColorName]);
        
        Circle *ce1 = [Circle circleWithColor:BlackColor andRect:(SpRectangle){15,15,166,19}];
        [ce1 draw];
        NSLog(@"colorName >>>>>>>>> %@",[ce1 takeColorName]);
        
       /* Shape *sp = [Shape new];
        SpRectangle _rec1 = {10,10,10,10};
        [sp setRec:_rec1];
        SpColor _color = BlackColor;
        [sp setColor:_color];
        
        [sp draw];
        */
    }
    return 0;
}
