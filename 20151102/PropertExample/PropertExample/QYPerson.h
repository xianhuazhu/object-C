//
//  QYPerson.h
//  PropertExample
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject

@property NSString *name;
@property int age;
@property NSString *sex;
@property NSString *something;
@property NSString *sleep;
@property NSString *bubbleSpinner;

- (instancetype)initWithDrawName:(NSString *)name andSex:(NSString *)sex andAge:(int)age;

- (instancetype)initWithEatSomething:(NSString *)somthing andSleep:(NSString *)sleep BubbleSpinner:(NSString *)bubbleSpinner;

@end
