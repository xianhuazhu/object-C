//
//  QYlingling.h
//  DelegateWithInfomPro
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CallMe.h"

//由于是lingling执行具体的叫醒行为，所以必须来遵守此协议
@interface QYlingling : NSObject <CallMe>

//叫醒fengzheng的行为
//- (void)call:(NSUInteger)time;

- (void)callFengzheng:(NSUInteger)time;

- (void)call;

@end
