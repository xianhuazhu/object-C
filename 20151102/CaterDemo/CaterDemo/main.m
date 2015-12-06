//
//  main.m
//  CaterDemo
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSString+NSNumberConvience.h"
#import "QYStudent.h"
#import "QYStudent+Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //将一个字符串的字符个数保存到数组中
//        1. 声明一个可变数组，并初始化
        NSMutableArray *lengthArray = [[NSMutableArray alloc] initWithCapacity:4];
//        2. 声明一个字符串，并赋值
        NSString *str = @"hello,qingyun!";
//        3. 计算字符串字符个数
        NSUInteger len = [str length];
//        4. 因数组无法存放基本数据类型，所以需要装箱过程
        NSNumber *numberlen = [NSNumber numberWithUnsignedLong:len];
//        5. 将长度放到数组中
        [lengthArray addObject:numberlen];
        
        NSString *anotherStr = @"hello";
        len = [anotherStr length];
        numberlen = [NSNumber numberWithUnsignedLong:len];
        [lengthArray addObject:numberlen];
        NSLog(@"%@",lengthArray);
        
        
        NSString *thireStr = @"welcome";
        [lengthArray addObject:[thireStr lengthAsNumber]];
        NSLog(@"%@",lengthArray);
        
        
        //在自定义的类实现里，类别的优先级最高，虽然编译器会提示警告消息，但同样可以，类别的优先级最高，（会首先被执行，而主类中的方法不会被调用）
        QYStudent *student = [[QYStudent alloc] init];
        student.name = @"FENGZHNEG";
        [student study];
    }
    
    return 0;
}
