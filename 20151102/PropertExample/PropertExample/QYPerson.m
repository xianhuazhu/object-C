//
//  QYPerson.m
//  PropertExample
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYPerson.h"

@implementation QYPerson

- (instancetype)initWithDrawName:(NSString *)name andSex:(NSString *)sex andAge:(int)age
{
    if (self = [super init]) {
        _name = name;
        _sex = sex;
        _age = age;
    }
    return  self;
}

- (instancetype)initWithEatSomething:(NSString *)somthing andSleep:(NSString *)sleep BubbleSpinner:(NSString *)bubbleSpinner
{
    if (self = [self initWithDrawName:@"qingyun" andSex:@"男" andAge:20]) {
        _something = somthing;
        _sleep = sleep;
        _bubbleSpinner = bubbleSpinner;
    }
    return self;
}

@end
