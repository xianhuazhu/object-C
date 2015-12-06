//
//  QYStudent.m
//  Bubbling
//
//  Created by qingyun on 15/11/7.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYStudent.h"

@implementation QYStudent

- (instancetype)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init]) {
        _name = name;
        _age = age;
    }
    return self;
}

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"name:%@,@age:%d",_name,_age];
    return desc;
}
@end
