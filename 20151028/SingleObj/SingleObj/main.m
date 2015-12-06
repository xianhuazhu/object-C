//
//  main.m
//  SingleObj
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TestClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        TestClass *shared = [TestClass sharedClass];
        NSLog( @"shared >>>>>>>> %p",shared);
        NSLog( @"shared >>>>>>>> %p",[TestClass sharedClass]);
    
    }
    return 0;
}
