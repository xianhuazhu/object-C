//
//  Person.m
//  ReferenceDemo
//
//  Created by qingyun on 15/10/28.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)jump
{
    NSLog( @"jumping >>>>>>>>>> ");
}

- (void)setName:(NSString *)name
{
    _name = name;
}
- (void)dealloc
{
    NSLog(@"count >>>>>>>> %ld",[self retainCount]);
    NSLog(@"%@挂了",_name);
    [super dealloc];
}

@end
