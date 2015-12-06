//
//  NSString+NumberOfStr.m
//  NumberOfString
//
//  Created by qingyun on 15/11/7.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "NSString+NumberOfStr.h"

@implementation NSString (NumberOfStr)

//实现类方法
+(NSUInteger)numberOfString:(NSString *)string
{
    NSUInteger count = 0;
    
    for (NSUInteger i = 0; i < [string length]; i++) {
        unichar c = [string characterAtIndex:i];
        if((c >= '0') && (c <= '9')){
            count++;
        }
    }
    return count;
}

//实现对象方法
- (NSUInteger)numberOfStr
{
    NSUInteger count = 0;
    
    for (NSUInteger i = 0; i < [self length]; i++) {
        unichar c = [self characterAtIndex:i];
        if ((c >= '0') && (c <= '9')) {
            count++;
        }
    }
    return count;
}
@end
