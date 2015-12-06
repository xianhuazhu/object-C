//
//  QYTrainingClass.m
//  QYTqainingClass
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "QYTrainingClass.h"

@implementation QYTrainingClass

//- (void)aClassName:(NSString *)className andFloor:(int)floor andTeacher:(QYTeacher *) andStudent:(QYStudent *)student
//{
//    NSLog(@"%@开班，在%d楼，老师是：%@,学生")
//}

- (void)setClassName:(NSString *)className
{
    _className = className;
}
- (NSString *)className
{
    return _className;
}

- (void)setFloor:(int)floor
{
    _floor= floor;
}
- (int)floor
{
    return _floor;
}

- (void)setTeacher:(QYTeacher *)teacher
{
    _teacher = teacher;
}
- (QYTeacher *)teacher
{
    return  _teacher;
}


- (void)setStudentNum:(int)studentNum
{
    _studentNum = studentNum;
}
- (int)studentNum
{
    return _studentNum;
}

- (void)drawFloorClassName
{
    NSLog(@"班级名称：%@,楼层：%d",_className, _floor);
}


- (void)setStudents:(QYStudent *)students atIndex:(int)index
{
    _students[index] = students;
}
- (QYStudent *)studentsAtIndex:(int)index
{
    return  _students[index];
}

- (void)start:(int)studentNum
{
    for (int i = 0; i < studentNum; i++) {
        NSLog(@"学生%d,%@",i, _students[i]);
    }
}

@end
