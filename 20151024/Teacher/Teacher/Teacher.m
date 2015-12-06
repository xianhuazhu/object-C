//
//  Teacher.m
//  Teacher
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

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
    NSString *des = [NSString stringWithFormat:@"我是一名老师，我在上课！"];
   // NSLog(@"我是一名老师，我在上课");
    return des;
}

//- (void)draw
//{
//       NSLog(@"我是%@老师，我在上课",_name);
//}
@end
