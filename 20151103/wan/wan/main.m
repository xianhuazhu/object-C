//
//  main.m
//  wan
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYSeceraty.h"
#import "QYManager.h"
#import "NSObject+QYSecetray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        QYManager *manager = [[QYManager alloc] init];
        QYSeceraty *secerate = [[QYSeceraty alloc] init];
        
        manager.delegate = secerate;
        [manager startWork];
        [manager phoneWork:@"接听电话"];
        [manager bookTickt];
    }
    return 0;
}
