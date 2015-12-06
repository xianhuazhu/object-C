//
//  QYTeacher.m
//  QYTqainingClass
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "QYTeacher.h"

@implementation QYTeacher


- (void)setStage:(NSString *)stage
{
    _stage = stage;
}
- (NSString *)stage
{
    return _stage;
}

- (void)setYearsOfWorking:(int)yearsOfWorking
{
    _yearsOfWorking = yearsOfWorking;
}
- (int)yearsOfWorking
{
    return _yearsOfWorking;
}

- (void)setSalary:(float)salary
{
    _salary = salary;
}
- (float)salary
{
    return _salary;
}

- (void)draw
{
    [super introduce];
    NSLog(@"工作年限是：%d, 教第 %@ 阶段", _yearsOfWorking, _stage);
    NSLog(@"%@在讲第 %@ 阶段", _name, _stage);
}

@end
