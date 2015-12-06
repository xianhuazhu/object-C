//
//  QYFengzheng.m
//  DelegateWithInfomPro
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYFengzheng.h"
#import "QYlingling.h"

@implementation QYFengzheng

- (void)startSleep:(NSUInteger)time
{
    [self.delegate callFengzheng:time];
    NSLog(@"Sleep >>>>>>>>>> ");

}


@end
