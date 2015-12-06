//
//  main.m
//  NumberOfStringDemo2
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSString+NumberOfStr.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //类方法
        NSString *str = @"sdfg234dfg678";
        NSUInteger cnt = [NSString numberOfString:str];
        NSLog(@"cnt === %lu",cnt);
        
        //对象(实例)方法
        cnt = [str numberOfStr];
        NSLog(@"cnt === %lu",cnt);
        
    }
    return 0;
}
