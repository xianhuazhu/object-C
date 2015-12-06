//
//  main.m
//  DelegateWithInfomPro
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYlingling.h"
#import "QYFengzheng.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYlingling *lingling = [[QYlingling alloc] init];
        QYFengzheng *fengzheng = [[QYFengzheng alloc] init];
        
        fengzheng.delegate = lingling;
        [fengzheng startSleep:5];
        
        //程序运行到此处，不能结束
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
