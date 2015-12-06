//
//  GenernalCar.m
//  Carcopy
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "GenernalCar.h"

#import "Tire.h"

@implementation GenernalCar

- (instancetype)copyWithZone:(NSZone *)zone
{
    GenernalCar *genernalCarCopy = [super copyWithZone:zone];//与父类相同的对象调用分类的逻辑对brand和tire完成赋值
   
    genernalCarCopy.price = self.price;
    
    return genernalCarCopy;
}
@end
