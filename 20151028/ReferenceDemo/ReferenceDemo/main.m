//
//  main.m
//  ReferenceDemo
//
//  Created by qingyun on 15/10/28.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
 
    Person *person = [Person new];
    [person setName:@"qingqing"];
    
    NSLog(@"count >>>>>>> %ld",[person retainCount]);
    [person retain];
     NSLog(@"count >>>>>>> %ld",[person retainCount]);
    [person release];
    NSLog(@"count >>>>>>> %ld",[person retainCount]);
    
    NSLog(@"count >>>>>>> %ld",[person retainCount]);
    [person retain];
    NSLog(@"count >>>>>>> %ld",[person retainCount]);
    [person release];
    NSLog(@"count >>>>>>> %ld",[person retainCount]);
    
    [person jump];
    [person release];

    //因为对象的内存再回收之后（就是对象 走过dealloc方法之后）
    person = nil;
    
    return 0;
}
