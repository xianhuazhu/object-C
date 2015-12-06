//
//  QYPrince.m
//  DelegateDemo
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYPrince.h"
#import "NSObject+wakeUp.h"
@implementation QYPrince

- (void)tellMeTime:(NSTimeInterval)time
{
    //首先判断自己是否能响应wakeUp这个消息（方法）
    if ([self respondsToSelector:@selector(wakeUp)]) {

    //启动一个定时器，
    /*参数1：时间间隔，以秒为单位
      参数2：时间到之后，接收消息的目标或者是对象
      参数3：时间到之后，需要发的消息，@selector(方法名)
      参数4：用户信息，用于定时器失效之后，由指定的对象保留或者释放定时器，一般设置为nil
      参数5：是否重复，只用一次的话，就是NO
    */
        [NSTimer scheduledTimerWithTimeInterval:time target:self selector:@selector(wakeUp) userInfo:nil repeats:NO];
    }
    else{
        NSLog(@"不要吵醒她，让她睡下去吧~~");
    }
}

//- (void)wakeUp
//{
//    NSLog(@"起床啦，开始学习iOS编程啦~~~");
//}
@end
