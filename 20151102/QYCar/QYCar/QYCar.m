//
//  QYCar.m
//  QYCar
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYCar.h"

@implementation QYCar

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"jingning";
        self.year = 30;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@,year:%ld", self.name, self.year];
}

- (id)copyWithZone:(NSZone *)zone
{
    QYCar *carCopy;
    //因为allocWithZone是一个类方法，所以需要使用类名来访问这个方法
    carCopy = [[self class] allocWithZone:zone];
    carCopy.name = self.name;
    carCopy.year = self.year;
    return carCopy;
}

@end
