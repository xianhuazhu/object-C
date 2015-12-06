//
//  main.m
//  QYPerson
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

- (void)BubbleSpinner:(NSString *)one;

- (void)sleep:(NSString *)name;



@end

@implementation QYPerson

- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}

- (void)setAge:(int)age
{
    _age = age;
}
- (int)age
{
    return _age;
}

- (void)setSex:(NSString *)sex
{
    _sex = sex;
}
- (NSString *)sex
{
    return _sex;
}

- (void)draw
{
    NSLog(@"我的名字叫：%@, 性别是：%@, 今年 %d岁", _name, _sex, _age);
}

- (void)eatWithSomething:(NSString *)somthing
{
     NSLog(@"%@在吃%@", _name, somthing);
}

- (void)BubbleSpinner:(NSString *)one
{
     NSLog(@"%@在%@", _name, one);
}

- (void)sleep:(NSString *)name
{
    NSLog(@"%@在睡觉", name);
}

- (void)eatWithSomething:(NSString *)somthing andSleep:(NSString *)sleep andBubbleSpinner:(NSString *)one
{
    NSLog(@"我的名字叫：%@,性别：%@,今年 %d 岁。最近喜欢吃%@, %@, %@", _name, _sex, _age, somthing, sleep, one);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       
        QYPerson *qpn1 = [QYPerson new];
        [qpn1 setName:@"景宁"];
        [qpn1 setAge:10];
        [qpn1 setSex:@"女"];
        
        [qpn1 eatWithSomething:@"蛋糕" andSleep:@"睡觉" andBubbleSpinner:@"打豆豆"];
        
        QYPerson *qpn2 = [QYPerson new];
        [qpn2 setName:@"清风"];
        [qpn2 eatWithSomething:@"蛋糕"];
        
        QYPerson *qpn3 = [QYPerson new];
        [qpn3 setName:@"晴儿"];
        [qpn3 BubbleSpinner:@"打豆豆"];
        
        QYPerson *qpn4 = [QYPerson new];
        [qpn4 sleep:@"小猫"];
    }
    return 0;
}
