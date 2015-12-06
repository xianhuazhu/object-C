//
//  QYPerson.m
//  QYTqainingClass
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "QYPerson.h"

@implementation QYPerson

- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}

- (void)setAge:(int)age
{
    _age = age;
}
- (int)age
{
    return _age;
}

- (void)setSex:(NSString *)sex
{
    _sex = sex;
}
- (NSString *)sex
{
    return _sex;
}

- (void)draw
{
    NSLog(@"我的名字叫：%@, 性别是：%@, 今年 %d岁", _name, _sex, _age);
}


- (void)eatWithSomething:(NSString *)somthing
{
    NSLog(@"%@在吃%@", _name, somthing);
}

- (void)BubbleSpinner:(NSString *)bubbleSpinner
{
    NSLog(@"%@在%@", _name, bubbleSpinner);
}

- (void)andSleep:(NSString *)sleep
{
    NSLog(@"%@在%@", _name, sleep);
}

- (void)eatWithSomething:(NSString *)somthing andSleep:(NSString *)sleep BubbleSpinner:(NSString *)bubbleSpinner
{
    NSLog(@"我的名字叫：%@,性别：%@,今年 %d 岁。最近喜欢吃%@, %@, %@", _name, _sex, _age, somthing, sleep, bubbleSpinner);
}

- (void)introduce
{
    NSLog(@"我的名字叫：%@, 我今年%d岁,是个%@",_name, _age, _sex);
}



@end
