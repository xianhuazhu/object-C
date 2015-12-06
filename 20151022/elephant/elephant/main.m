//
//  main.m
//  elephant
//
//  Created by qingyun on 15/10/22.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

//大象类
@interface Elephant : NSObject
{
    float _weight;
    NSString *_name;
}

- (void)setWeight : (float)weight;
- (float)weight;

- (void)setName : (NSString *)name;
- (NSString *)name;

@end

@implementation Elephant

- (void)setWeight : (float)weight
{
    _weight = weight;
}
- (float)weight
{
    return _weight;
}

- (void)setName : (NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}

@end



//冰箱类

@interface Fridge : NSObject
{
    NSString *_brand;
    float _space;
}

- (void)setBrand : (NSString *)brand;
- (NSString *)brand;

- (void)setSpace : (float)space;
- (float)space;

//设置一个方法把大象放进去
- (void)putInWith : (Elephant *)oneelephant;

@end

@implementation Fridge

- (void)setBrand : (NSString *)brand
{
    _brand = brand;
}
- (NSString *)brand
{
    return _brand;
}

- (void)setSpace : (float)space
{
    _space = space;
}
- (float)space
{
    return _space;
}

- (void)putInWith:(Elephant *)oneelephant
{
    if( ( _space ) - ( [oneelephant weight] ) > 0)
    {
        NSLog(@"大象 %@ 放进 %@ 冰箱", [oneelephant name], _brand);
    }else
    {
        NSLog(@"大象太大无法放入！");
    }
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Elephant *ele1 = [Elephant new];
        [ele1 setName : @"小暖"];
        [ele1 setWeight : 4030.2];
        
        Fridge *fe1 = [Fridge new];
        [fe1 setBrand : @"海尔"];
        [fe1 setSpace : 5000];
        [fe1 putInWith : ele1];
        
    }
    return 0;
}
