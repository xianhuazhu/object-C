//
//  NSObject+wakeUp.h
//  DelegateDemo
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

//为NSObject创建一个类别，名字就是wakeUp,也就是创建一个非正式协议
@interface NSObject (wakeUp)
//新添加的方法
- (void)wakeUp;
@end
