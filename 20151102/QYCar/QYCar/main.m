//
//  main.m
//  QYCar
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYCar.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYCar *car = [[QYCar alloc] init];
        NSLog(@"%@",car);
        
        QYCar *carCopy = [car copy];
        carCopy.name = @"qingyun";
        NSLog(@"carcopy >>>>>>>%@",carCopy);
        NSLog(@"car agin:%@",car);
        
    }
    return 0;
}
