//
//  XiaoQiang.h
//  Movie
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XiaoQiang : NSObject

@property (nonatomic) int backPrice;
@property (nonatomic) int backNumber;
@property (nonatomic, strong) void (^block) (int, int);

- (void)TicketsPrice;

- (void)xiaoQiangBuyTickets;

@end
