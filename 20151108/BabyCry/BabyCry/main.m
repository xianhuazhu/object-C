//
//  main.m
//  BabyCry
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Baby.h"
#import "Norse.h"
#import "doSomething.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Baby *baby = [[Baby alloc] init];
        Norse *norse = [[Norse alloc] init];
        
        baby.delegate = norse;
        [baby babyCry];
        [norse doSomething];
    }
    return 0;
}
