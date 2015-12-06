//
//  main.m
//  BlockPricticetwo
//
//  Created by qingyun on 15/11/5.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYMath.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        QYMath *math = [[QYMath alloc] initWithBlock:^int(int a, int b) {
            NSLog(@"result:%d",a+b);
            return a+b;
        }];
        math.var1 = 100;
        math.var2 = 20;
        [math run];


    }
    return 0;
}
