//
//  main.m
//  Student
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *student1 = [[Student alloc] init];

        NSLog(@"%@",student1.book);
        
        Student *student2 = [student1 copy];
        student2.book = [student1.book copy];
        NSLog(@"student2's name is %@, age is %d, like's book are %@",student2.name, student2.age, student2.book);
        
    }
    return 0;
}
