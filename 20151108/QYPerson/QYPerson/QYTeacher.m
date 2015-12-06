//
//  QYTeacher.m
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYTeacher.h"

@implementation QYTeacher

- (void)setStage:(int)stage
{
    _stage= stage;
}
- (int)stage
{
    return _stage;
}

- (void)setEX:(float)EX
{
    _EX = EX;
}
-(float)EX
{
    return _EX;
}

- (void)setSalary:(int)salary
{
    _salary = salary;
}
- (int)salary
{
    return _salary;
}

- (NSString *)description
{
    NSMutableString *desc = [NSMutableString stringWithString:[super description]];
    [desc appendFormat:@"\n我教第%d阶段，我有%.2f的工作经验,我的工资%d",_stage, _EX,_salary];
    return desc;
}
@end
