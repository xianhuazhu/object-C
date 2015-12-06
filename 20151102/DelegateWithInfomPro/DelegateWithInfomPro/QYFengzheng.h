//
//  QYFengzheng.h
//  DelegateWithInfomPro
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CallMe.h"
@class QYlingling;

@interface QYFengzheng : NSObject

//休息的行为
- (void)startSleep:(NSUInteger)time;

//QYlingling<CallMe>就是将来给我设定的这个代理对象必须具有叫我起床的行为
@property (nonatomic, weak) QYlingling <CallMe> *delegate;

@end
