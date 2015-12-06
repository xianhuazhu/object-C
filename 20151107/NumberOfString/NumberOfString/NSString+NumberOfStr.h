//
//  NSString+NumberOfStr.h
//  NumberOfString
//
//  Created by qingyun on 15/11/7.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

//为NSString添加一个类别：NumberOfStr
@interface NSString (NumberOfStr)

//添加一个类方法，计算某个字符串对象中阿拉伯数字的个数；
+ (NSUInteger)numberOfString:(NSString *)string;
//添加一个实例方法（对象方法），计算个字符串对象中阿拉伯数字的个数；
- (NSUInteger)numberOfStr;

@end
