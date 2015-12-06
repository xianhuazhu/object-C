//
//  main.m
//  classWork
//
//  Created by qingyun on 15/10/27.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "arryDemo.h"
#import "dictDemo.h"

int main(int argc, const char * argv[]) {

    
    arryDemo *ad = [arryDemo new];
    
    NSArray *arry = @[@"qingyun", @"qingling", @"mingjing"];
    NSLog(@"arry >>>>>>>> %@",arry);
    NSString *str = [ad demo:arry];
    NSLog(@"str >>>>>>> %@",str);

    dictDemo *dd = [dictDemo new];
    NSDictionary *dict = @{@"xingming":@"qingqing",@"age":@"30"};
    NSString *str1 = [dd demo:dict];
    NSLog(@"str1 >>>>>> %@",str1);
    
    return 0;
}
