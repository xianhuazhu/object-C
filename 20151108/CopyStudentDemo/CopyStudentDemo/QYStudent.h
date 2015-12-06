//
//  QYStudent.h
//  CopyStudentDemo
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

//自定义的对象要拷贝的话，必须遵守NSCopying协议。
@interface QYStudent : NSObject <NSCopying>

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int age;
@property (nonatomic, strong) NSArray *books;

- (id)initWithName:(NSString *)name andage:(int)age andBooks:(NSArray *)books;

@end
