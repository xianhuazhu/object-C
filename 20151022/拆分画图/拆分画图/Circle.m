//
//  Circle.m
//  拆分画图
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (void)setRadius:(float)radius
{
    _radius = radius;
}

- (float)radius
{
    return _radius;
}

// 如果子类对父类的实现不满意的话，就可以自己实现该方法的逻辑，这时候不用在子类中声明该方法，这种做法称之为 方法重写（override）
- (void)draw
{
    NSLog(@"在 {%d,%d,%d,%d} 区域内用 %@ 颜色画了一个半径为 %.2f 的圆形", _rect.x, _rect.y, _rect.width, _rect.height, [self takeColorName], _radius);
}

@end
