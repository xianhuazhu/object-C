//
//  Student.h
//  Student
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int age;
@property (nonatomic, copy) NSArray *book;

- (instancetype)copyWithZone:(NSZone *)zone;

- (id)init;

@end
