//
//  XiaoQiang.m
//  Movie
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "XiaoQiang.h"

@implementation XiaoQiang

- (void)TicketsPrice
{
    _backNumber = 1;
    _backPrice = 30;
}

- (void)xiaoQiangBuyTickets
{
    NSLog(@"小强去买票");
    _block(_backPrice, _backNumber);
}
@end
