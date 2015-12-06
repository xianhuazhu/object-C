//
//  Tire.m
//  Carcopy
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (instancetype)copyWithZone:(NSZone *)zone
{
    Tire *copyTire = [[Tire allocWithZone:zone] init];
    copyTire.name = [self.name copy];
    return copyTire;
}
@end
