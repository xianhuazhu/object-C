//
//  Triangle.h
//  拆分画图2
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Shape.h"

@interface Triangle : Shape

{
    float _base;
}

+ (Triangle *)doWithTriangle:(SpColor)color andRect:(SpArea)rect;

- (void)setBase:(float)base;
- (float)base;

- (NSString *)takeColorName;

- (void)draw;

@end
