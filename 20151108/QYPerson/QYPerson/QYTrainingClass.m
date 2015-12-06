//
//  QYTrainingClass.m
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYTrainingClass.h"

#import "QYStudent.h"

@implementation QYTrainingClass

- (void)setMainTeacher:(QYTeacher *)teacher
{
    _mainTeacher =  teacher;
}
- (QYTeacher *)teacher
{
    return _mainTeacher;
}

- (void)setStudents:(NSMutableArray *)students
{
    _students = students;
}
- (NSMutableArray *)students
{
    return _students;
}

//开班，学生和老师做自我介绍
-(void)start
{
    NSLog(@"主讲老师：%@",_mainTeacher);
    NSLog(@"下面有请学生做自我介绍：");
    for (QYStudent *student in _students) {
        NSLog(@"%@",student);
    }
}
@end
