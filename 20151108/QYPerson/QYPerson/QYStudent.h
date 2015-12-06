//
//  QYStudent.h
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
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

@end
