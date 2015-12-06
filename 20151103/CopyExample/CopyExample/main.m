//
//  main.m
//  CopyExample
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.NSArray，不可变数组——>浅拷贝
        NSArray *arr = @[@"hello",@"world",@"qingyun"];
        NSArray *arr1 = [arr copy];
        
        NSLog(@"arr:%p",arr);
        NSLog(@"arr1:%p",arr1);
        
        //2.NSMutableArray,可变数组——>深拷贝
        NSMutableArray *arr2 = [NSMutableArray arrayWithArray:arr];
        NSArray *arr3 = [arr2 copy];
        
        NSLog(@"arr2:%p",arr2);
        NSLog(@"arr3:%p",arr3);
        
        //3.不可变字符串，浅拷贝
        NSString *str = @"123456";
        NSString *str1 = [str copy];
        
        NSLog(@"str:%p",str);
        NSLog(@"str1:%p",str1);
        
        //4.测试可变字符串是深拷贝还是浅拷贝
        NSMutableArray *arr4 = [NSMutableArray arrayWithArray:arr];
        NSArray *arr5 = [arr4 copy];
        
        NSLog(@"arr4:%p",arr4);
        NSLog(@"arr5:%p",arr5);
        
        //5.测试不可变字典类
        //NSDictionary *dict = @[@"name:",@"xingxing",@"sex:", @"30"];
        NSDictionary *dict1 = [NSDictionary dictionaryWithObjectsAndKeys:@"name:",@"xingxing",@"sex:", @"30", nil];
        NSDictionary *dict2 = [dict1 copy];
        
        NSLog(@"dict1:%@",dict1);
        NSLog(@"dict2:%@",dict2);
        NSLog(@"dict1:%p",dict1);
        NSLog(@"dict2:%p",dict2);
        
        //6.测试可变字典类
        
        NSMutableDictionary *dict3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"xingming", @"qingyun", @"sex", @"40", nil];
        NSMutableDictionary *dict4 = [dict3 copy];
        
        NSLog(@"dict3:%p",dict3);
        NSLog(@"dict4:%p",dict4);
        
        NSLog(@"dict3:%@",dict3);
        NSLog(@"dict4:%@",dict4);
    }
    return 0;
}
