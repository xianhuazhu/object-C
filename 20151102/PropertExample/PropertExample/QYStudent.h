//
//  QYStudent.h
//  PropertExample
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYPerson.h"

@interface QYStudent : QYPerson

@property NSString *school;
@property int grade;
@property NSString *doHomeWork;
@property NSString *takeLessons;


- (instancetype)initWithDraw:(NSString *)school andGrade:(int)grade;

- (instancetype)initWithDoHomeWork:(NSString *)doHomeWork andTakeLessons:(NSString *)takeLessons;

- (instancetype)initWithTeacher:(NSString *)Tname andStudent:(NSString *)Student;

@end
