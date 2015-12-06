//
//  Person.h
//  ARCRule
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
    NSString *_ID;
    NSString *_wife;
}

- (instancetype)initWithAge:(int)age;

- (instancetype)initWithPerson:(NSString *)name andAge:(int)age;

- (NSString *)name;

- (int)age;

@end
