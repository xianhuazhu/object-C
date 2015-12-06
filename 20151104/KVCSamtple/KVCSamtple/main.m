//
//  main.m
//  KVCSamtple
//
//  Created by qingyun on 15/11/4.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Student.h"
#import "Student.h"
#import "Friend.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSDictionary *student = @{@"name":@"qingyun",
                                        @"age":@20,
                                        @"school":@"万方",
                                        @"address":@"郑州",
                                       // @"friends":@{@"name":@"kaili"}
                                        };
        //键路径
//        NSLog(@"friends:%@",[student valueForKeyPath:@"friends.name"] );
//        NSLog(@"friends:%@",student[@"friends"] [@"name"]);
        
        NSMutableDictionary *mtDict = [NSMutableDictionary dictionaryWithDictionary:student];
        [mtDict setValue:@"郑大" forKey:@"school"];
        
        Student *stObj = [[Student alloc] init];
//        stObj.name = student[@"name"];
        
        //缺点：
        //KVC就是一种通过名字来访问或操作成员变量的一种方式,KVC先访问setter getter方法，
        //如果有的话直接调用setter getter，如果没有直接访问成员变量，所以比直接访问setter getter
        //或成员变量要慢，所以不要滥用kvc
        for (NSString *key in student) {
            [stObj setValue:student[key] forKey:key ];
        }
        [stObj setValue:@40 forKey:@"age"];//stObj.age = @"40";
        //KVC优点：会对数值自动拆装箱eg：@40
        //stObj.age = @"50";
        NSLog(@"stobj >>>>>> %@",stObj.age);
        
        NSLog(@"stobj >>> %@", stObj.school);
        NSLog(@"stobj >>>>> %@",mtDict[@"school"]);
        
        Friend *friend = [[Friend alloc] init];
        stObj.friend = friend;
        
        [stObj setValue:@"cancan" forKeyPath:@"friend.name"];
        NSLog(@"friend:%@",stObj.friend.name);
    }
    return 0;
}
