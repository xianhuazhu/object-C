//
//  Triangle.h
//  拆分画图
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Shape.h"

@interface Triangle : Shape
{
    float _foot;
    float _height;
}

- (void)setFoot:(float)foot;
- (float)foot;

- (void)setHeight:(float)height;
- (float)height;

- (void)doSomething;


@end
