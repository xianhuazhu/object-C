//
//  dictDemo.m
//  classWork
//
//  Created by qingyun on 15/10/27.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "dictDemo.h"

@implementation dictDemo

- (NSString *)demo:(NSDictionary *)dict
{
    NSMutableString *str = [NSMutableString stringWithString:@"arry >>>>>> { \n"];
    NSArray *keys = [dict allKeys];
    
    for (int i = 0; i < [keys count]; i++) {
        [str appendFormat:@"\t%@:%@;\n",keys[i],dict[keys[i]]];
    }
    [str appendString:@"}"];
    return str;
}

@end
