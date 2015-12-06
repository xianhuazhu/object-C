//
//  QYPerson.m
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYPerson.h"

@implementation QYPerson

- (void)setName:(NSString *)name
{
    _name= name;
}
- (NSString *)name
{
    return _name;
}

- (void)setAge:(int)age
{
    _age = age;
}
- (int)age
{
    return _age;
}

- (void)setIsMan:(BOOL)isMan
{
    _isMan = isMan;
}
- (BOOL)isMan
{
    return _isMan;
}

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"我叫%@,我%d岁了，我是%@",_name, _age, _isMan ? @"男生":@"女生"];
    return desc;
}

@end
