//
//  QYWitch.m
//  DelegateDemo
//
//  Created by qingyun on 15/11/7.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYWitch.h"

@implementation QYWitch

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
        NSLog(@"别理她！！");
    }
}
@end
