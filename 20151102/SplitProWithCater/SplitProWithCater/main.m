//
//  main.m
//  SplitProWithCater
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Things.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Things *thing = [[Things alloc] init];
        [thing resetAllValue];
        [thing print];
        
        
    }
    return 0;
}
