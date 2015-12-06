//
//  Norse.m
//  BabyPrictice
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Norse.h"
#import "NSObject+doSomething.h"

@implementation Norse

- (void)NorseDoSomething:(NSTimeInterval)time
{
    //判断自己是否能够响应doSomething这个消息（方法），响应则启动计数器
    if ([self respondsToSelector:@selector(doSomething)])
    {
        //启动一个定时器
        //1. 时间间隔
        //2. 时间到之后，接收消息的目标或者对象
        //3. 时间到之后，需要发的消息，@selector(方法名)
        //4. 用户信息，用于定时器失效之后，由指定对象保留或者释放定时器，一般设置为nil;
        //5. 是否重复，只用一次的话，就是NO
    [NSTimer scheduledTimerWithTimeInterval:time target:self selector:@selector(doSomething) userInfo:nil repeats:NO];
    }
}

@end
