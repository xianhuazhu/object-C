//
//  QYPerson.h
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject
{
    NSString *_name;
    int _age;
    BOOL _isMan;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setAge:(int)age;
- (int)age;

- (void)setIsMan:(BOOL)isMan;
- (BOOL)isMan;

@end
