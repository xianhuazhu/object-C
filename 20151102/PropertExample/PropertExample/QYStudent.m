//
//  QYStudent.m
//  PropertExample
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYStudent.h"

#import "QYTeacher.h"

@implementation QYStudent

- (instancetype)initWithDraw:(NSString *)school andGrade:(int)grade
{
    if (self = [super init]) {
        _school = school;
        _grade = grade;
    }
    return self;
}

- (instancetype)initWithDoHomeWork:(NSString *)doHomeWork andTakeLessons:(NSString *)takeLessons
{
    if (self = [super init]) {
        _doHomeWork = doHomeWork;
        _takeLessons = takeLessons;
    }
    return self;
}

- (instancetype)initWithTeacher:(NSString *)Tname andStudent:(NSString *)Student
{
    if (self = [self initWithDoHomeWork:@"做作业" andTakeLessons:@"听课"]) {
        self.name = Tname;
        self.name = Student;
    }
    return self;
}

@end
