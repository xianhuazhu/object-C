//
//  QYStudent.m
//  CopyStudentDemo
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYStudent.h"

@implementation QYStudent

- (id)initWithName:(NSString *)name andage:(int)age andBooks:(NSArray *)books
{
    if (self = [super init]) {
        _name = name;
        _age = age;
        _books = books;
    }
    return self;
}

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"name: %@ ,age: %d ,books: %@ ",_name,_age,_books];
    return desc;
}

//自定义对象遵守协议，要实现copyWithZone这个方法
- (id)copyWithZone:(NSZone *)zone
{
    QYStudent *student = [[QYStudent allocWithZone:zone] init];
    
    student.name = [_name copy];
    student.age = _age;
    student.books = [_books copy];
    
    return student;//返回拷贝的副本
}

@end
