//
//  Circle.h
//  拆分画图2
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Shape.h"

@interface Circle : Shape
{
    int _radius;
}

- (void)setRadius:(int)radius;
- (int)radius;

- (void)draw;

@end
