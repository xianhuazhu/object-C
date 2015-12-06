//
//  NSObject+Secretary.m
//  ManagerSecretary
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "NSObject+Secretary.h"

@implementation NSObject (Secretary)

- (void)phoneCall:(NSString *)something
{
    NSLog(@"让秘书%@",something);
}

- (void)bookTicket
{
    NSLog(@"让秘书订票");
}

@end
