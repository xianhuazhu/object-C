//
//  arryDemo.m
//  classWork
//
//  Created by qingyun on 15/10/27.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "arryDemo.h"

@implementation arryDemo

- (NSString *)demo:(NSArray *)arry
{
    NSMutableString *str = [NSMutableString stringWithString:@"arry >>>>>>> [\n"];
    
    for (int i = 0; i < [arry count]; i++) {
        [str appendFormat:@"\t%@;\n",arry[i]];
    }
    [str appendString:@"]"];
    return str;
}
@end
