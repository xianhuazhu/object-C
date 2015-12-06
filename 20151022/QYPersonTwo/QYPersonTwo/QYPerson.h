//
//  QYPerson.h
//  QYPersonTwo
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject
{
    NSString *_name;
    int _age;
    NSString *_sex;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setAge:(int)age;
- (int)age;

- (void)setSex:(NSString *)sex;
- (NSString *)sex;

- (void)draw;

- (void)eatWithSomething:(NSString *)somthing;

- (void)BubbleSpinner:(NSString *)bubbleSpinner;

- (void)andSleep:(NSString *)sleep;

- (void)eatWithSomething:(NSString *)somthing andSleep:(NSString *)sleep BubbleSpinner:(NSString *)bubbleSpinner;

@end
