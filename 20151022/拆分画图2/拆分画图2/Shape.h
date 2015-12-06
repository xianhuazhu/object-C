//
//  Shape.h
//  拆分画图2
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    Cred,
    Cblack,
    Cpurple
    
}SpColor;

typedef struct
{
    int x;
    int y;
    int wide;
    int high;
    
}SpArea;


@interface Shape : NSObject
{
    SpColor _color;
    SpArea _rect;
}

+ (Shape *)Shape:(SpColor)color andShapeRect:(SpArea)rect;

- (void)setColor:(SpColor)color;
- (SpColor)color;

- (void)setRect:(SpArea)rect;
- (SpArea)rect;

- (NSString *)takeColorName;

- (void)draw;

@end
