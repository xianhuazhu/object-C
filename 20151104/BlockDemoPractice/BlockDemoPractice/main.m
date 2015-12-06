//
//  main.m
//  BlockDemoPractice
//
//  Created by qingyun on 15/11/4.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
void (*point) (void);

void doSomething();

void doEverthing();
*/

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
        point = doSomething;
        point();
        
        point = doEverthing;
        point();
         */
        /*
        int (^quare_block) (int number) = ^(int number) {return number * number; };
        quare_block(100);
        NSLog(@"%d",quare_block(100));
        
        typedef int (^mystudent) (void);
        
        static int myInt = 100;
        static int anotherInt = 200;
        mystudent blk =  ^{return myInt * anotherInt;};
        NSLog(@"%d",blk());
        
        myInt = 90;
        anotherInt = 90;
        //mystudent blk = ^{return myInt * anotherInt;};
        NSLog(@"%d",blk());
        */
        __block int result = 700;
        int (^quare_block) (int number) = ^(int number) {result = number * number; return result;};
        NSLog(@"%d",quare_block(20));
        
    }
    return 0;
}

void myBlock(void (^block)())
{
    block();
}
/*
void doSomething()
{
    NSLog(@"%s",__func__);
}

void doEverthing()
{
    NSLog(@"%s",__func__);
}
*/