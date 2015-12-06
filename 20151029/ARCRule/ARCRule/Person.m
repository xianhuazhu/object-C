//
//  Person.m
//  ARCRule
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithAge:(int)age
{
    if (self = [super init]) {
        _age = age;
    }
    return self;
}

- (instancetype)initWithPerson:(NSString *)name andAge:(int)age
{
    if (self = [self initWithAge:age]){
        _name = name;
    }
    return self;
}

- (NSString *)name
{
    return  _name;
}

- (int)age
{
    return _age;
}

@end
