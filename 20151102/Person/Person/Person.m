//
//  Person.m
//  Person
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    if (self = [super init]) {
        _ID = @"this is a secret";
    }
    return self;
}

//@synthesize 指令的本意是合成 自己编写和编译器生成的代码
//@synthesize name = _name;//通过这样的方式就可以为属性name生成的成员变量 改名为nickName


//@dynamic的真正用法是隐藏属性的具体实现
@dynamic salary;

- (void)setSalary:(double)salary
{
    cash = salary;
}

- (double)salary
{
    return cash;
}

@end
