//
//  Student.h
//  KVCSamtple
//
//  Created by qingyun on 15/11/4.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Friend;

@interface Student : NSObject

@property (nonatomic , strong) NSString *name;
@property (nonatomic , strong) NSString *age;
@property (nonatomic , strong) NSString *school;
@property (nonatomic , strong) NSString *address;

@property (nonatomic , strong) Friend *friend;

@end
