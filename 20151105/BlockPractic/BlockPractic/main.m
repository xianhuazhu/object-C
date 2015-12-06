//
//  main.m
//  BlockPractic
//
//  Created by qingyun on 15/11/5.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car *carOne = [[Car alloc] init];
        
        int number = 100;
        
        void (^play) (void) = ^{
            NSLog(@"play music %d",number);
        };
        [carOne doSomething:play];
        
        
        Car *carTow = [[Car alloc] init];
        
        carTow.price = 100000;
        void (^low) (void) = ^{
            carTow.price +=1 ;
            NSLog(@"价格下降至：%d",carTow.price);
        };
        [carOne doSomething:low];
    }
    return 0;
}
