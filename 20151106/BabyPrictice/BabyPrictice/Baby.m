//
//  Baby.m
//  BabyPrictice
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Baby.h"
#import "Norse.h"
#import "BadPeople.h"

@implementation Baby

- (void)babyCry
{
    NSLog(@"小孩在大哭！");
    [self.delegate NorseDoSomething:8];
}


@end
