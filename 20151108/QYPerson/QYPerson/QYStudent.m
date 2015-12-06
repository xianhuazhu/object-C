//
//  QYStudent.m
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
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

-(NSString *)description
{
    NSString *desc1 = [super description];
    NSString *desc2 = [NSString stringWithFormat:@"\n 我的学校是%@, 我的年级是：%d",_school, _grade];
    return [desc1 stringByAppendingString:desc2];
}
@end
