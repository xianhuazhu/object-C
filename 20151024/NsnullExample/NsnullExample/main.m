//
//  main.m
//  NsnullExample
//
//  Created by qingyun on 15/10/26.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        NSMutableDictionary *jingnig = [NSMutableDictionary dictionaryWithDictionary:@{@"name":@"qingyun", @"age":@"20", @"sex":[NSNull null]}];
        NSMutableDictionary *dengling = [NSMutableDictionary dictionaryWithDictionary:@{@"name":@"yikngying", @"age":@"30", @"sex":[NSNull null]}];
        NSMutableDictionary *fengfeng = [NSMutableDictionary dictionaryWithDictionary:@{@"name":@"hengheng", @"age":@"25", @"sex":[NSNull null]}];
        
        NSArray *students = @[jingnig,dengling,fengfeng];
        NSLog(@"students >>>>>>> %@",students);
        
        NSLog(@"NSNull >>>>>>>> %p",[NSNull null]);
        NSLog(@"NSNull >>>>>>>> %p",[NSNull null]);
        NSLog(@"NSNull >>>>>>>> %p",[NSNull null]);
        
        for (NSMutableDictionary *dict in students) {
            if (dict[@"sex"] == [NSNull null]) {
                dict[@"sex"] = [NSObject new];
            }
        }
        NSLog(@"students >>>>>>> %@",students);
    }
    return 0;
}
