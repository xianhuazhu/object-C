//
//  main.m
//  CopyStudentDemo
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYStudent *studentOne = [[QYStudent alloc] initWithName:@"xiangxiang" andage:18 andBooks:@[@"Java",@"C",@"OC"]];
        
        NSLog(@"<%p>%@",studentOne,studentOne);
        
        //完成方法，对对象完成拷贝
        QYStudent *stuCopy = [studentOne copy];
        NSLog(@"<%p>%@",stuCopy,stuCopy);
    }
    return 0;
}
