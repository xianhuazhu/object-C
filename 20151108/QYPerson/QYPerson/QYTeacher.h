//
//  QYTeacher.h
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYPerson.h"

@interface QYTeacher : QYPerson
{
    int _stage;
    float _EX;
    int _salary;
}

- (void)setStage:(int)stage;
- (int)stage;

- (void)setEX:(float)EX;
- (float)EX;

- (void)setSalary:(int)salary;
- (int)salary;

@end
