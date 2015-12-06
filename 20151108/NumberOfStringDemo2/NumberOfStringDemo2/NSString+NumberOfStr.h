//
//  NSString+NumberOfStr.h
//  NumberOfStringDemo2
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

//为NSString添加一个类别：NumberOfStr
@interface NSString (NumberOfStr)

//类方法，向一个类发消息
//添加一个类方法，计算某个字符中的阿拉伯数字的个数
+ (NSUInteger)numberOfString:(NSString *)string;

//向对象发消息，不用写参数，向哪个对象发消息就用self就可以。
//添加一个对象（实例）方法，计算某个字符中的阿拉伯数字的个数
- (NSUInteger)numberOfStr;

@end
