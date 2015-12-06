//
//  NSArray+Sort.m
//  Bubbling
//
//  Created by qingyun on 15/11/7.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "NSArray+Sort.h"

@implementation NSArray (Sort)

- ( NSArray *)sortedArrayUsingMyBlock:(NSComparator)cmptr
{
    NSUInteger i,j;
    //首先对当前的对象进行可变的拷贝，得到一个可变数组
    NSMutableArray *mutableArr = [self mutableCopy];
    
    //冒泡算法
    for ( i = 0; i < [self count]-1; i++) {
        for (j = 0; j < [self count]-1-i; j++) {
            if(cmptr ([mutableArr objectAtIndex:i], [mutableArr objectAtIndex:j]) == NSOrderedDescending)
                [mutableArr exchangeObjectAtIndex:i withObjectAtIndex:j];
        }
    }
    return (NSArray *)mutableArr;
}
@end
