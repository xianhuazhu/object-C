//
//  main.m
//  DelegateDemo
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYPrince.h"
#import "QYPrincess.h"
#import "QYWitch.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYPrince *Huangxiaoming = [[QYPrince alloc] init];
        QYPrincess *Angelababy = [[QYPrincess alloc] init];
        QYWitch *witch = [[QYWitch alloc] init];
        
        //给公主的委托赋值
        //Angelababy.delegate = Huangxiaoming;
        
        //因为是非正式协议，所以巫婆类的对象也能响应wakeUp方法。
        Angelababy.delegate = witch;
        
        [Angelababy sleep];
        
        //手动启动当前的循环，使进程不退出，保证定时器事件能被处理
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
