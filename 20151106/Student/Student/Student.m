//
//  Student.m
//  Student
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)init
{
    if (self = [super init]) {
        _name = @"xiangxiang";
        _age = 18;
        _book = @[@"cyuyan",@"piao",@"TAVA"];
    }
    return self;
}

- (instancetype)copyWithZone:(NSZone *)zone
{
    Student *studentCopy = [[Student allocWithZone:zone] init];
    studentCopy.name = [self.name copy];
    studentCopy.age = self.age;
    studentCopy.book = @[@"qingyun",@"xxx",@"ddd"];
    studentCopy.book = [self.book copy];
    
    return studentCopy;
}
@end
