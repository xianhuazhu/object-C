//
//  Baby.m
//  BabyDemo
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Baby.h"

#import "Norse.h"
#import "NSObject+NorseDoing.h"

@implementation Baby

- (void)babyCry
{
    NSLog(@"baby crying in the home!");
    [self.delegate doSomething];
}

@end
