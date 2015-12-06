//
//  QYStudent.h
//  QYPersonTwo
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "QYPerson.h"

@interface QYStudent : QYPerson
{
    NSString *_school;
    int _grade;
}

- (void)setSchool:(NSString *)school;
- (NSString *)school;

- (void)setGrade:(int)grade;
- (int)grade;

- (void)draw;

- (void)takeLessons;

- (void)doHomeWork;

- (void)aTeacher:(NSString *)Tname aStudent:(NSString *)Sname;

@end
