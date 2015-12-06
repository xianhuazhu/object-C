//
//  Person.h
//  Person
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Friend;

@interface Person : NSObject
{
    double cash;
}

//nonatomic/atomic nonatomic(非原子性)提升性能 atomic（原子性）线程安全，但性能较低
@property (nonatomic,strong) NSString *name;

//读写属性扩展：readonle/readwrite 默认值是readwrite
@property (nonatomic, readonly, strong) NSString *ID;//readonly代表属性是只读的，编译器不会生成该属性对应的setter方法的声明和实现

//内存语义：strong = retain/weak/assign/copy
//strong 代表将来的成员变量是强引用weak生成弱引用，都是对对象使用
//assign 代表标量的内存语义，默认是assign，所以标量的内存语义不需要写，对象不能使用assign

@property (nonatomic) double salary;

@property (nonatomic, strong) Friend *friend;

//getter = isHide 可以为getter方法改名
@property (nonatomic, getter=isHide) BOOL hide;

- (instancetype)initWithName:(NSString *)name;

@end
