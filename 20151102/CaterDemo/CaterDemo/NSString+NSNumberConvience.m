//
//  NSString+NSNumberConvience.m
//  CaterDemo
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "NSString+NSNumberConvience.h"

@implementation NSString (NSNumberConvience)

- (NSNumber *)lengthAsNumber
{
    NSUInteger length = [self length];
    return [NSNumber numberWithUnsignedLong:length];
}
@end
