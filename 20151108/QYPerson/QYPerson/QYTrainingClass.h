//
//  QYTrainingClass.h
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QYTeacher;

//需要复合老师和学生
@interface QYTrainingClass : NSObject
{
    QYTeacher *_mainTeacher;
    //QYStudent *_students[50];//c风格
    NSMutableArray *_students;
}

- (void)setMainTeacher:(QYTeacher *)teacher;
- (QYTeacher *)teacher;

- (void)setStudents:(NSMutableArray *)students;
- (NSMutableArray *)students;

- (void)start;

@end
