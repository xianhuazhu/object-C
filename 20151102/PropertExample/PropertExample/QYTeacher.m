//
//  QYTeacher.m
//  PropertExample
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYTeacher.h"

@implementation QYTeacher

- (instancetype)initWithDraw:(NSString *)name andYearsOfWorking:(int)yearsOfWorking andStage:(NSString *)stage
{
    if (self = [super init]) {
        self.name = name;
        _yearsOfWorking = yearsOfWorking;
        _stage = stage;
    }
    return self;
}

@end
