//
//  QYTrainingClass.h
//  QYTqainingClass
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYTeacher.h"
#import "QYStudent.h"

@interface QYTrainingClass : NSObject
{
    NSString *_className;
    int _floor;
    QYTeacher *_teacher;
    QYStudent *_students[20];
    int _studentNum;
}

- (void)setClassName:(NSString *)className;
- (NSString *)className;

- (void)setFloor:(int)floor;
- (int)floor;

- (void)setTeacher:(QYTeacher *)teacher;
- (QYTeacher *)teacher;

- (void)setStudents:(QYStudent *)students atIndex:(int)index;
- (QYStudent *)studentsAtIndex:(int)index;

- (void)setStudentNum:(int)studentNum;
- (int)studentNum;

- (void)drawFloorClassName;

- (void)start:(int)studentNum;

@end
