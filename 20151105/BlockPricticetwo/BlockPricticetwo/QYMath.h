//
//  QYMath.h
//  BlockPricticetwo
//
//  Created by qingyun on 15/11/5.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int (^mathBlock) (int, int);

@interface QYMath : NSObject

@property (nonatomic) int var1;
@property (nonatomic) int var2;

//代码块类型的两种定义方式
@property (nonatomic, strong) mathBlock block;
//@property (nonatomic, strong) int (^block) (int, int);

- (instancetype)initWithBlock:(mathBlock)block;
//- (instancetype)initWithBlock:(int (^) (int, int))block;

- (void)run;

@end
