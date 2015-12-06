//
//  QYStudent.h
//  Bubbling
//
//  Created by qingyun on 15/11/7.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYStudent : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int age;

- (instancetype)initWithName:(NSString *)name andAge:(int)age;

@end
