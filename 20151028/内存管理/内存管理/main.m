//
//  main.m
//  内存管理
//
//  Created by qingyun on 15/10/28.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Car.h"
#import "Engine.h"

int main(int argc, const char * argv[]) {
 
      Car *ben = [Car new];
    
    [ben setName:@"奔驰"];
    
    Engine *engine = [Engine new];
    [engine setPower:10];
    [engine setBrand:@"朝阳"];
    [ben setEngine:engine];
    
    Engine *engine1 = [Engine new];
    [engine1 setPower:11];
    [engine1 setBrand:@"雪佛兰"];
    [ben setEngine:engine1];
    
    [ben run];
    
    [engine setBrand:@"真"];
    [engine setPower:11];
    
    [ben release];
    [engine release];
    
    return 0;
}
