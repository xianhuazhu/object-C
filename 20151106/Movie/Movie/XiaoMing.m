//
//  XiaoMing.m
//  Movie
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "XiaoMing.h"

#import "XiaoQiang.h"

@implementation XiaoMing

- (void)XiaoQiang
{
    XiaoQiang *qiang = [[XiaoQiang alloc] init];
    
    void (^callBack) (int, int) = ^(int backPrice, int backNumber){
        _price = backPrice;
        _number = backNumber;
    };
    qiang.block = callBack;
    
    [qiang TicketsPrice];
    [qiang xiaoQiangBuyTickets];


     NSLog(@"小明从小强那里得知电影票的价格和剩余数目：%d,%d",_price,_number);
    if ( (self.price > 100) || (self.number < 4)) {
        NSLog(@"票价太高或剩的票太少了，我不去看了！");
    }
    else{
        NSLog(@"我决定了，我要去看电影！");
    }
}

@end
