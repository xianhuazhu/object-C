//
//  main.m
//  Bubbling
//
//  Created by qingyun on 15/11/7.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSArray+Sort.h"
#import "QYStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *arr = @[@"hello",@"world",@"qingyun",@"1509techer"];
        NSLog(@"<%p>:%@",arr,arr);
        
        //定义一个代码块变量，按字符串的比较规则来比较
        NSComparator cmptr = ^(id obj1, id obj2){
            NSString *str1 = (NSString *)obj1;
            NSString *str2 = (NSString *)obj2;
            
            return [str1 compare:str2];
        };
        //调用系统定义的数组排序方法
        NSArray *arrSorted = [arr sortedArrayUsingComparator:cmptr];
        NSLog(@"arrSorted >>>>> %@",arrSorted);
        
        //调用我们自己添加的新的排序方法
        NSArray *arrSortedNew = [arr sortedArrayUsingMyBlock:cmptr];
        NSLog(@"arrSortedNew >>>> %@",arrSortedNew);
        
        QYStudent *stu1 = [[QYStudent alloc] initWithName:@"xiangxiang" andAge:18];
        QYStudent *stu2 = [[QYStudent alloc] initWithName:@"chengcheng" andAge:18];
        QYStudent *stu3 = [[QYStudent alloc] initWithName:@"youyou" andAge:18];
        
        NSArray *stuArr = @[stu1,stu2,stu3];
        NSLog(@"stuArr >>>>> %@",stuArr);//
        
        NSComparator myCmptr = ^(id obj1, id obj2){
            QYStudent *stud1 = (QYStudent *)obj1;
            QYStudent *stud2 = (QYStudent *)obj2;
            
            //根据年龄的比较，返回不同的结果
            if(stud1.age>stud2.age){
                return NSOrderedAscending;
            }else if (stud1.age == stud2.age)
            {
                return NSOrderedSame;
            }else{
                return NSOrderedDescending;
            }
        };
        NSLog(@"%ld",(long)myCmptr(stu1,stu2));
        NSArray *stuArrSorted = [stuArr sortedArrayUsingMyBlock:myCmptr];
        
        NSLog(@"%@",stuArrSorted);
    }
    return 0;
}
