//
//  main.m
//  Teacher
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Teacher.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Teacher *tr = [Teacher new];
        NSLog(@"%@",tr);
        Student *st = [Student new];
        NSLog(@"%@",st);
        
    }
    return 0;
}
