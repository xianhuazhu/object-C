//
//  main.m
//  Movie
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "XiaoMing.h"
#import "XiaoQiang.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        XiaoMing *ming = [[XiaoMing alloc] init];
        NSLog(@"小明托小强帮自己买票！");
        [ming XiaoQiang];
        
    }
    return 0;
}
