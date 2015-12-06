//
//  TestClass.m
//  SingleObj
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "TestClass.h"

@implementation TestClass

+ (instancetype)sharedClass
{
    static TestClass *shared;
    if (shared == nil) {
        shared = [TestClass new];
    }
    return shared;
}
@end
