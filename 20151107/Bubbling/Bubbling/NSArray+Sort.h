//
//  NSArray+Sort.h
//  Bubbling
//
//  Created by qingyun on 15/11/7.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Sort)

- (NSArray *)sortedArrayUsingMyBlock:(NSComparator)cmptr;

@end
