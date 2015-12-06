
//
//  QYManager.m
//  ManagerSecretary
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYManager.h"

#import "QYSecretary.h"

@implementation QYManager

- (void)startWork
{
    NSLog(@"经理开始工作");
    [self.delegate work];
}


@end
