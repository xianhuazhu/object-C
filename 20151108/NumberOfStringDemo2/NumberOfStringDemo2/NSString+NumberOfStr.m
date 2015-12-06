//
//  NSString+NumberOfStr.m
//  NumberOfStringDemo2
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "NSString+NumberOfStr.h"

@implementation NSString (NumberOfStr)

+ (NSUInteger)numberOfString:(NSString *)string
{
    //设置变量，存个数
    NSUInteger count = 0;
    //遍历字符串，找阿拉伯数字
    for (NSUInteger i = 0; i < [string length]; i++) {
        unichar c = [string characterAtIndex:i];//取字符
        if ((c >= '0') && (c <= '9')) {//判断是否在这个区间的阿拉伯数字
            count++;
        }
    }
    return count;
}

- (NSUInteger)numberOfStr
{
    //设置变量，存个数
    NSUInteger count = 0;
    //遍历字符串，找阿拉伯数字,求某个对象，用self
    for (NSUInteger i = 0; i < [self length]; i++) {
        unichar c = [self characterAtIndex:i];//取字符
        if ((c >= '0') && (c <= '9')) {//判断是否在这个区间的阿拉伯数字
            count++;
        }
    }
    return count;
}
@end
