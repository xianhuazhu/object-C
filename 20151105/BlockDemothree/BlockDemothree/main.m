//
//  main.m
//  BlockDemothree
//
//  Created by qingyun on 15/11/5.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //void (*funcPtr) (void);
        void (^blockVar) (void);
        
        //代码块也是一个变量，只不过该变量内存空间中存储的是一个函数体
        int (^block)(int);
        //typedef定义代码块的类型，代码块的类型是由代码块的参数类型和返回类型来决定的。
        typedef int (^blockType)(int);
        
//        NSString* (^OcBlock)(NSString *, NSArray *, NSNumber *);
//        typedef NSString *(^BlockType)(NSString *, NSArray *, NSNumber *);
//        
        
        blockType block2, block3;
        block2 = ^int(int y){
            printf("y ===== %d\n",y);
            return 0;
        };
        block3 = ^int(int x){
            printf("x >>>>>> %d",x);
            return  0;
        };
        
        //如果返回值和参数都是空的，可以省略
        block = ^(int a){
            NSLog(@"a >> %d",a);
            return a;
        };
        
        //直接调用
        blockVar = ^{
            NSLog(@"hello");
        };
        blockVar();
        block(1000);
        
        //内联用法
        NSArray *name = @[@"xiang",@"cheng",@"li",@"hua"];
        NSLog(@"unsorted >> %@",name);
        
        typedef NSComparisonResult (^ComprainsonBlock)(id, id);
        ComprainsonBlock cpBlock;
        cpBlock = ^NSComparisonResult(Car *obj1, Car *obj2)
        {
            return [@(obj1.price) compare:@(obj2.price)];
        };
        NSArray *sortedName = [name sortedArrayUsingComparator:^NSComparisonResult(id  obj1, id  obj2) {
            return [obj1 compare:obj2];
        }];
        ComprainsonBlock cpBlock1;
        cpBlock1 = ^NSComparisonResult(Car *obj1, Car *obj2){
            return [@(obj1.price) compare:@(obj2.price)];
        };
        
        NSLog(@"sorted >>>> %@",sortedName);
        
        Car *car1 = [[Car alloc] init];
        car1.price = 10000;
        
        Car *car2 = [[Car alloc] init];
        car2.price = 1000;
        
        Car *car3 = [[Car alloc] init];
        car3.price = 100;
        
        Car *car4 = [[Car alloc] init];
        car4.price = 10;
        
        NSArray *cars = @[car1,car2,car3,car4];
        NSArray *sortedCars = [cars sortedArrayUsingComparator:cpBlock];
        NSLog(@"sorted >>> %@",sortedCars);
        
    }
    return 0;
}
