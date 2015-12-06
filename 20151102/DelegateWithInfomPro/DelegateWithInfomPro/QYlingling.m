//
//  QYlingling.m
//  DelegateWithInfomPro
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYlingling.h"
#import "NSObject+Calllingling.h"

@implementation QYlingling


//- (void)call:(NSUInteger)time
//{
    //需要在指定的时间里。把lingling叫醒
    //多长时间后去叫lingling
    //第二个参数约定的形为方法的哪个对象，由于这里是非正常协议，所以填self也没关系
    //第三个参数：具体约定如何叫lingling的方法名字
//    SEL method = @selector(callfengzheng);
//    [NSTimer scheduledTimerWithTimeInterval:time target:self selector:@selector(callLingling) userInfo:nil repeats:NO];
  // }

- (void)callFengzheng:(NSUInteger)time
{
    SEL method = @selector(call);
    [NSTimer scheduledTimerWithTimeInterval:time target:self selector:method userInfo:nil repeats:NO];
}

- (void)call
{
    NSLog(@"起床了！");
}
@end
