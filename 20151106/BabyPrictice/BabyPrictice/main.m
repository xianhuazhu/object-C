//
//  main.m
//  BabyPrictice
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Baby.h"
#import "Norse.h"
#import "BadPeople.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Baby *baby = [[Baby alloc] init];
        //Norse *norse = [[Norse alloc] init];
        BadPeople *bad = [[BadPeople alloc] init];
        
        //给baby的委托赋值
        //baby.delegate = norse;
        //因为是非正式协议，所以坏人类也可以响应doSomething类
        baby.delegate = bad;
        [baby babyCry];
        
        //手动启动当前的循环，使进程不退出，保证定时器事件能被处理
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
