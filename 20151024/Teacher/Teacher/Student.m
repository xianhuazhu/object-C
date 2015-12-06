//
//  Student.m
//  Teacher
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}

- (NSString *)description
{
    NSString *ns = [NSString stringWithFormat:@"我是个学生，我在听课"];
    return ns;
}
@end
