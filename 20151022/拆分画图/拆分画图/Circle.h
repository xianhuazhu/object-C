//
//  Circle.h
//  拆分画图
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Shape.h"

@interface Circle : Shape

{
    float _radius;
}

- (void)setRadius:(float)radius;
- (float)radius;

@end
