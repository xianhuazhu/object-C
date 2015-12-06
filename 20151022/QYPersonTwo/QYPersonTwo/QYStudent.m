//
//  QYStudent.m
//  QYPersonTwo
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "QYStudent.h"

@implementation QYStudent

- (void)setSchool:(NSString *)school
{
    _school = school;
}
- (NSString *)school
{
    return _school;
}

- (void)setGrade:(int)grade
{
    _grade = grade;
}
- (int)grade
{
    return _grade;
}

- (void)draw
{
    [super draw];
    NSLog(@"我来自%@学校, 读 %d 年级", _school, _grade);
}

- (void)takeLessons
{
    NSLog(@"%@在听课", _name);
}

- (void)doHomeWork
{
     NSLog(@"%@在做作业", _name);
}

- (void)aTeacher:(NSString *)Tname aStudent:(NSString *)Sname
{
    [super draw];
    NSLog(@"欢迎 %@老师讲课, %@听课, 做作业",  Tname, Sname);
}

@end
