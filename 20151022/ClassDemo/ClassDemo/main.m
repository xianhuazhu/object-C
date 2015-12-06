//
//  main.m
//  ClassDemo
//
//  Created by qingyun on 15/10/22.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

//1.接口
@interface Person : NSObject
{
    char *_name[10];
    int _age;
    int _identify;
}

//方法的声明

//+类方法，由类来执行

+ (Person *)PersonWithName : (char *)name andAge : (int)age;

- (void)love;

- (void)run;

- (void) eat;

@end

//2.实现
@implementation Person

- (void)love
{
    NSLog(@"love _________");
}

- (void)run
{
    NSLog(@"run ________");
}

- (void)eat
{
    NSLog(@"eat________");
}

+ (Person *)PersonWithName:(char *)name andAge:(int)age
{
    Person *st2 = [Person new];
    [st2 ]
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *st1 = [Person new];//创建对象
        [st1 love];//发消息（调用方法）
        [st1 run];
        [st1 eat];
        
          }
    return 0;
}
