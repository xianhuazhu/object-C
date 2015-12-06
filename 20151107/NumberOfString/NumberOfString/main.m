//
//  main.m
//  NumberOfString
//
//  Created by qingyun on 15/11/7.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSString+NumberOfStr.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *str = @"kdnjbhvfg465felbhfjkndkmls8790";
        
        //调用类方法
        NSUInteger cnt = [NSString numberOfString:str];
        NSLog(@"类方法：cnt == %lu",cnt);
        
        //调用实例方法
        cnt = [str numberOfStr];
        NSLog(@"实例方法：cnt == %lu",cnt);
    }
    return 0;
}
