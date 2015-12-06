//
//  QYMath.m
//  BlockPricticetwo
//
//  Created by qingyun on 15/11/5.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYMath.h"

@implementation QYMath

- (instancetype)initWithBlock:(mathBlock)block
{
    if (self = [super init]) {
        NSLog(@"block > %@",block);
        _block = block;
    }
    return self;
}

- (void)run
{
    _block(_var1, _var2);
}

@end
